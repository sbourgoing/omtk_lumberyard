import logging
import pymel.core as pymel
from omtk import constants
from omtk.core import classRig
from omtk.core import className
from omtk.libs import libPymel

log = logging.getLogger('omtk')

class LumberyardNomenclature(className.BaseName):
    root_jnt_name = 'root_group'
    scene_root_name = 'SceneRoot'
    locomotion_loc_name = 'Locator_Locomotion'

    def __init__(self, *args, **kwargs):
        super(LumberyardNomenclature, self).__init__(*args, **kwargs)

class LumberyardSceneRoot(classRig.RigGrp):
    """
    Inherit from RigGrp. Represent the scene root node needed to correctly export data for lumberyard.
    The code have been taken directly from the LumberyardAnimationUtilities.mel that come with lumberyard maya tools
    """
    def __init__(self):
        super(LumberyardSceneRoot, self).__init__()

        self.locomotion_locator = None

    def __createNode__(self, *args, **kwargs):
        """
        Create the node the same way it's done in lumberyard tools. At the same time, ensure to create the locomotion
        locator needed for move by anim feature. It need to be named Locator_Locomotion

        :param args: Additional parameters
        :param kwargs: Addtional keyword params
        :return: Return the created scene node
        """

        # Create the scene root curve
        scene_root = pymel.curve(d=1, p=[(1, 0, 0), (1.049582, 0, 0.000590718), (1.010888, 0, 0.0685401),
                                         (1.033656, 0, 0.0685401), (1.067513, 0, 0.0178139),
                                         (1.10137, 0, 0.0685401), (1.124137, 0, 0.0685401), (1.085562, 0, 0.000590718),
                                         (1.124255, 0, -0.0673587), (1.101487, 0, -0.0673587),
                                         (1.067631, 0, -0.0165146), (1.033656, 0, -0.0673587),
                                         (1.010888, 0, -0.0673587),
                                         (1.049582, 0, 0.000590718), (1, 0, 0), (0.75, 0, -0.25),
                                         (0.75, 0, -0.125), (0, 0, -0.125), (-0.125, 0, 0), (-0.125, 0, 0.125),
                                         (-0.125, 0, 0.75),
                                         (-0.25, 0, 0.75), (0, 0, 1), (0.000344241, 0, 1.03654),
                                         (-0.0436663, 0, 0.99124), (-0.0723325, 0, 0.99124), (-0.0723325, 0, 1.104489),
                                         (-0.0496827, 0, 1.104489), (-0.0496827, 0, 1.015423),
                                         (0.0370236, 0, 1.104489), (0.0635663, 0, 1.104489), (0.0635663, 0, 0.99879),
                                         (0.0409165, 0, 0.99879), (0.0409165, 0, 1.0783),
                                         (0.000344241, 0, 1.03654), (0, 0, 1), (0.25, 0, 0.75), (0.125, 0, 0.75),
                                         (0.125, 0, 0.125),
                                         (0.125, 0, 0), (0.125, 0.75, 0), (0.25, 0.75, 0),
                                         (0, 1, 0), (-0.000470898, 1.056641, 0), (0.0774559, 1.005923, 0),
                                         (0.0774559, 1.026439, 0),
                                         (0.012561, 1.065182, 0), (0.0774559, 1.107272, 0),
                                         (0.0774559, 1.124266, 0), (-0.000470898, 1.073547, 0),
                                         (-0.0577933, 1.073547, 0),
                                         (-0.0577933, 1.056641, 0), (-0.000470898, 1.056641, 0),
                                         (0, 1, 0), (-0.25, 0.75, 0), (-0.125, 0.75, 0), (-0.125, 0, 0),
                                         (-0.125, 0, 0.75),
                                         (-0.25, 0, 0.75), (0, 0, 1), (0.25, 0, 0.75), (0.125, 0, 0.75),
                                         (0.125, 0, 0.125), (0.75, 0, 0.125), (0.75, 0, 0.25), (1, 0, 0)],
                                 k=[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22,
                                    23,
                                    24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44,
                                    45, 46, 47,
                                    48, 49, 50,
                                    51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65],
                                 name=LumberyardNomenclature.scene_root_name)

        #Now create the locomotion locator needed
        self.locomotion_locator = pymel.createNode('locator').getParent()
        self.locomotion_locator.rename(LumberyardNomenclature.locomotion_loc_name)
        self.locomotion_locator.setParent(scene_root)
        
        # Rotate it to extract the world different between maya and lumberyard (Same than in 3DS max)
        pymel.rotate(scene_root, [-90, 180, 0])

        return scene_root

    def unbuild(self, keep_if_children=False, *args, **kwargs):
        """
        Unbuild the node

        :param keep_if_children: Will not unbuild the node if it's have children attached on it
        :param args: Additionnal arguments
        :param kwargs: Addition keyword arguments
        """
        pymel.delete(self.locomotion_locator)
        self.locomotion_locator = None

        super(LumberyardSceneRoot, self).unbuild()

class RigLumberyard(classRig.Rig):
    """
    Custom rig implementation in respect to lumberyard engine.
    """

    DEFAULT_UPP_AXIS = constants.Axis.z
    LEGACY_ARM_IK_CTRL_ORIENTATION = True
    LEGACY_LEG_IK_CTRL_ORIENTATION = True

    def __init__(self, *args, **kwargs):
        super(RigLumberyard, self).__init__(*args, **kwargs)
        self._color_ctrl = True
        self.scene_root = None

    def _get_nomenclature_cls(self):
        """
        :return: Return the LumberyardNomenclature class
        """
        return LumberyardNomenclature

    def pre_build(self):
        """
        Pre build routine before the rig is build

        :return:
        """
        super(RigLumberyard, self).pre_build(create_master_grp=True, create_layer_jnt=True)

        #
        # Create specific group related to squeeze rig convention
        #

        # Build the scene root
        self.scene_root = self.build_grp(LumberyardSceneRoot, self.scene_root, self.nomenclature.scene_root_name)

        # Try to parent the root joint to the scene root
        if self.grp_jnt:
            self.grp_jnt.setParent(self.scene_root)
        else:
            log.error('Root joint {} could not be found. Rig export for lumberyard will fail'
                      .format(self.nomenclature.locomotion_loc_name))

    def post_build_module(self, module):
        """
        Additional changes on the different module built for the rig

        :param module: The built module on which we want to do additional changes
        """
        super(RigLumberyard, self).post_build_module(module)

        # Allow animators to change the rotate order if needed
        for ctrl in module.get_ctrls():
            if libPymel.is_valid_PyNode(ctrl):
                ctrl.node.rotateOrder.setKeyable(True)

    def _unbuild_nodes(self):
        """
        Unbuild the different created node for the rig

        :return:
        """
        self.scene_root = self._unbuild_node(self.scene_root, keep_if_children=True)
        super(RigLumberyard, self)._unbuild_nodes()
        
def register_plugin():
    return RigLumberyard

