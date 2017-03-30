import os
from maya import cmds
import pymel.core as pymel
import omtk
import unittest
import libSerialization

def open_scene(path_local):
    def deco_open(f):
        def f_open(*args, **kwargs):
            m_path_local = path_local # make mutable

            path = os.path.join(os.path.dirname(__file__), m_path_local)
            if not os.path.exists(path):
                raise Exception("File does not exist on disk! {0}".format(path))

            cmds.file(path, open=True, f=True)
            return f(*args, **kwargs)
        return f_open
    return deco_open

class TestCaseSqueeze(unittest.TestCase):

    def _build_unbuild_build(self):
        omtk.build_all(strict=True)
        omtk.unbuild_all()
        omtk.build_all(strict=True)

    def _unbuild_build(self):
        omtk.unbuild_all()
        omtk.build_all(strict=True)

    @open_scene("./rig_squeeze_template01.ma")
    def test_rig_squeeze(self):
        self._build_unbuild_build()

    @open_scene('./rig_squeeze_facial01.ma')
    def test_rig_squeeze_facial(self):
        self._build_unbuild_build()

    @open_scene('./rig_squeeze_facial01.ma')
    def test_rig_squeeze_facial_new(self):
        from omtk.modules.rigHead import Head
        from omtk.modules.rigFaceJaw import FaceJaw
        from omtk.modules.rigFaceBrow import FaceBrow
        from omtk.modules.rigFaceSquint import FaceSquint
        from omtk.modules.rigFaceLips import FaceLips
        from omtk.modules.rigFaceEyes import FaceEyes
        from omtk.modules.rigFaceLids import FaceLids
        from omtk.modules.rigFaceNose import FaceNose

        pymel.delete(pymel.ls(type='network'))
        rig = omtk.create()
        rig.add_module(Head([pymel.PyNode('Head_Jnt')]))
        rig.add_module(FaceJaw([pymel.PyNode('Jaw_Jnt')]))
        rig.add_module(FaceBrow(pymel.ls('*_Brow*_Jnt', type='joint')))
        rig.add_module(FaceSquint(pymel.ls('*_Squint*_Jnt', type='joint')))
        rig.add_module(FaceLips(pymel.ls('*_Lip*_Jnt', type='joint')+pymel.ls('*_Mouth*_Jnt', type='joint')))
        rig.add_module(FaceEyes([pymel.PyNode('L_Eye_Jnt'), pymel.PyNode('R_Eye_Jnt')]))
        rig.add_module(FaceLids(pymel.ls('*_Lid*_Jnt', type='joint')))
        rig.add_module(FaceNose(pymel.ls('*Nose*_Jnt', type='joint')))
        rig.build(strict=True)
        libSerialization.export_network(rig)

def register_plugin():
    return TestCaseSqueeze
