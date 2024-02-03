{
    "header": {
        "pipelineVersion": "2.2",
        "releaseVersion": "2023.3.0",
        "fileVersion": "1.1",
        "template": false,
        "nodesVersions": {
            "FeatureMatching": "2.0",
            "PrepareDenseScene": "3.1",
            "DepthMapFilter": "4.0",
            "Texturing": "6.0",
            "CameraInit": "9.0",
            "StructureFromMotion": "3.3",
            "DepthMap": "5.0",
            "Meshing": "7.0",
            "ImageMatching": "2.0",
            "FeatureExtraction": "1.3",
            "MeshFiltering": "3.0"
        }
    },
    "graph": {
        "Texturing_1": {
            "nodeType": "Texturing",
            "position": [
                2000,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "fc6f082722829262931191f2aefc156951aa6bb0"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{Meshing_1.output}",
                "imagesFolder": "{DepthMap_1.imagesFolder}",
                "inputMesh": "{MeshFiltering_1.outputMesh}",
                "inputRefMesh": "",
                "textureSide": 8192,
                "downscale": 2,
                "outputMeshFileType": "obj",
                "colorMapping": {
                    "enable": true,
                    "colorMappingFileType": "exr"
                },
                "bumpMapping": {
                    "enable": true,
                    "bumpType": "Normal",
                    "normalFileType": "exr",
                    "heightFileType": "exr"
                },
                "displacementMapping": {
                    "enable": true,
                    "displacementMappingFileType": "exr"
                },
                "unwrapMethod": "Basic",
                "useUDIM": true,
                "fillHoles": false,
                "padding": 5,
                "multiBandDownscale": 4,
                "multiBandNbContrib": {
                    "high": 1,
                    "midHigh": 5,
                    "midLow": 10,
                    "low": 0
                },
                "useScore": true,
                "bestScoreThreshold": 0.1,
                "angleHardThreshold": 90.0,
                "workingColorSpace": "sRGB",
                "outputColorSpace": "AUTO",
                "correctEV": true,
                "forceVisibleByAllVertices": false,
                "flipNormals": false,
                "visibilityRemappingMethod": "PullPush",
                "subdivisionTargetRatio": 0.8,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "outputMesh": "{cache}/{nodeType}/{uid0}/texturedMesh.{outputMeshFileTypeValue}",
                "outputMaterial": "{cache}/{nodeType}/{uid0}/texturedMesh.mtl",
                "outputTextures": "{cache}/{nodeType}/{uid0}/texture_*.exr"
            }
        },
        "Meshing_1": {
            "nodeType": "Meshing",
            "position": [
                1600,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "513c97e9d4f265923a259aabde1831b84f953eef"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMapFilter_1.input}",
                "depthMapsFolder": "{DepthMapFilter_1.output}",
                "outputMeshFileType": "obj",
                "useBoundingBox": false,
                "boundingBox": {
                    "bboxTranslation": {
                        "x": 0.0,
                        "y": 0.0,
                        "z": 0.0
                    },
                    "bboxRotation": {
                        "x": 0.0,
                        "y": 0.0,
                        "z": 0.0
                    },
                    "bboxScale": {
                        "x": 1.0,
                        "y": 1.0,
                        "z": 1.0
                    }
                },
                "estimateSpaceFromSfM": true,
                "estimateSpaceMinObservations": 3,
                "estimateSpaceMinObservationAngle": 10.0,
                "maxInputPoints": 50000000,
                "maxPoints": 5000000,
                "maxPointsPerVoxel": 1000000,
                "minStep": 2,
                "partitioning": "singleBlock",
                "repartition": "multiResolution",
                "angleFactor": 15.0,
                "simFactor": 15.0,
                "minVis": 2,
                "pixSizeMarginInitCoef": 2.0,
                "pixSizeMarginFinalCoef": 4.0,
                "voteMarginFactor": 4.0,
                "contributeMarginFactor": 2.0,
                "simGaussianSizeInit": 10.0,
                "simGaussianSize": 10.0,
                "minAngleThreshold": 1.0,
                "refineFuse": true,
                "helperPointsGridSize": 10,
                "densify": false,
                "densifyNbFront": 1,
                "densifyNbBack": 1,
                "densifyScale": 20.0,
                "nPixelSizeBehind": 4.0,
                "fullWeight": 1.0,
                "voteFilteringForWeaklySupportedSurfaces": true,
                "addLandmarksToTheDensePointCloud": false,
                "invertTetrahedronBasedOnNeighborsNbIterations": 10,
                "minSolidAngleRatio": 0.2,
                "nbSolidAngleFilteringIterations": 2,
                "colorizeOutput": false,
                "addMaskHelperPoints": false,
                "maskHelperPointsWeight": 1.0,
                "maskBorderSize": 4,
                "maxNbConnectedHelperPoints": 50,
                "saveRawDensePointCloud": false,
                "exportDebugTetrahedralization": false,
                "seed": 0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "outputMesh": "{cache}/{nodeType}/{uid0}/mesh.{outputMeshFileTypeValue}",
                "output": "{cache}/{nodeType}/{uid0}/densePointCloud.abc"
            }
        },
        "DepthMapFilter_1": {
            "nodeType": "DepthMapFilter",
            "position": [
                1400,
                0
            ],
            "parallelization": {
                "blockSize": 24,
                "size": 11,
                "split": 1
            },
            "uids": {
                "0": "2b5967831f3524220a7733d0e3fab75373343997"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMap_1.input}",
                "depthMapsFolder": "{DepthMap_1.output}",
                "minViewAngle": 2.0,
                "maxViewAngle": 70.0,
                "nNearestCams": 10,
                "minNumOfConsistentCams": 3,
                "minNumOfConsistentCamsWithLowSimilarity": 4,
                "pixToleranceFactor": 2.0,
                "pixSizeBall": 0,
                "pixSizeBallWithLowSimilarity": 0,
                "computeNormalMaps": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "depth": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap.exr",
                "sim": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_simMap.exr"
            }
        },
        "ImageMatching_1": {
            "nodeType": "ImageMatching",
            "position": [
                400,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 11,
                "split": 1
            },
            "uids": {
                "0": "2b01225923ebec8053ceef10bb7b56ddad22e8d5"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_1.input}",
                "featuresFolders": [
                    "{FeatureExtraction_1.output}"
                ],
                "method": "SequentialAndVocabularyTree",
                "tree": "${ALICEVISION_VOCTREE}",
                "weights": "",
                "minNbImages": 200,
                "maxDescriptors": 500,
                "nbMatches": 40,
                "nbNeighbors": 5,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/imageMatches.txt"
            }
        },
        "FeatureExtraction_1": {
            "nodeType": "FeatureExtraction",
            "position": [
                200,
                0
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 11,
                "split": 1
            },
            "uids": {
                "0": "6972ea00f81fcc82901aa0e12ea49495f6584c4b"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_1.output}",
                "masksFolder": "",
                "maskExtension": "png",
                "maskInvert": false,
                "describerTypes": [
                    "dspsift"
                ],
                "describerPreset": "normal",
                "maxNbFeatures": 0,
                "describerQuality": "normal",
                "contrastFiltering": "GridSort",
                "relativePeakThreshold": 0.01,
                "gridFiltering": true,
                "workingColorSpace": "sRGB",
                "forceCpuExtraction": true,
                "maxThreads": 0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "StructureFromMotion_1": {
            "nodeType": "StructureFromMotion",
            "position": [
                800,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 11,
                "split": 1
            },
            "uids": {
                "0": "6e34b807b0c14c9833d46edd8e1cd8a67721f93a"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_1.input}",
                "featuresFolders": "{FeatureMatching_1.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_1.output}"
                ],
                "describerTypes": "{FeatureMatching_1.describerTypes}",
                "localizerEstimator": "acransac",
                "observationConstraint": "Scale",
                "localizerEstimatorMaxIterations": 4096,
                "localizerEstimatorError": 0.0,
                "lockScenePreviouslyReconstructed": false,
                "useLocalBA": true,
                "localBAGraphDistance": 1,
                "nbFirstUnstableCameras": 30,
                "maxImagesPerGroup": 30,
                "bundleAdjustmentMaxOutliers": 50,
                "maxNumberOfMatches": 0,
                "minNumberOfMatches": 0,
                "minInputTrackLength": 2,
                "minNumberOfObservationsForTriangulation": 2,
                "minAngleForTriangulation": 3.0,
                "minAngleForLandmark": 2.0,
                "maxReprojectionError": 4.0,
                "minAngleInitialPair": 5.0,
                "maxAngleInitialPair": 40.0,
                "useOnlyMatchesFromInputFolder": false,
                "useRigConstraint": true,
                "rigMinNbCamerasForCalibration": 20,
                "lockAllIntrinsics": false,
                "minNbCamerasToRefinePrincipalPoint": 3,
                "filterTrackForks": false,
                "computeStructureColor": true,
                "useAutoTransform": true,
                "initialPairA": "",
                "initialPairB": "",
                "interFileExtension": ".abc",
                "logIntermediateSteps": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/sfm.abc",
                "outputViewsAndPoses": "{cache}/{nodeType}/{uid0}/cameras.sfm",
                "extraInfoFolder": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "PrepareDenseScene_1": {
            "nodeType": "PrepareDenseScene",
            "position": [
                1000,
                0
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 11,
                "split": 1
            },
            "uids": {
                "0": "c111314e73ae7325ab917870ef3a143c7a6f1267"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_1.output}",
                "imagesFolders": [],
                "masksFolders": [],
                "maskExtension": "png",
                "outputFileType": "exr",
                "saveMetadata": true,
                "saveMatricesTxtFiles": false,
                "evCorrection": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "undistorted": "{cache}/{nodeType}/{uid0}/<VIEW_ID>.{outputFileTypeValue}"
            }
        },
        "CameraInit_1": {
            "nodeType": "CameraInit",
            "position": [
                0,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 11,
                "split": 1
            },
            "uids": {
                "0": "15f7992d98a962011c09aab7eee18db2b3e2e090"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "viewpoints": [
                    {
                        "viewId": 50058568,
                        "poseId": 50058568,
                        "path": "V:/Dev/3D modelling & CGI/Photoscan/Textures/BetonWallRough/20240201_134827.jpg",
                        "intrinsicId": 3897198293,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidthEstimation\": \"9.461585\", \"DateTime\": \"2024:02:01 13:48:28\", \"Exif:ApertureValue\": \"1.69\", \"Exif:BrightnessValue\": \"3.3\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2024:02:01 13:48:28\", \"Exif:DateTimeOriginal\": \"2024:02:01 13:48:28\", \"Exif:DigitalZoomRatio\": \"1\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"5.54\", \"Exif:FocalLengthIn35mmFilm\": \"23\", \"Exif:MaxApertureValue\": \"1.69\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"40\", \"Exif:PixelXDimension\": \"8160\", \"Exif:PixelYDimension\": \"3768\", \"Exif:SceneCaptureType\": \"0\", \"Exif:ShutterSpeedValue\": \"0.02\", \"Exif:SubsecTime\": \"206\", \"Exif:SubsecTimeDigitized\": \"206\", \"Exif:SubsecTimeOriginal\": \"206\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.02\", \"FNumber\": \"1.8\", \"Make\": \"samsung\", \"Model\": \"Galaxy A54 5G\", \"Orientation\": \"1\", \"ResolutionUnit\": \"cm\", \"Software\": \"A546BXXS6BWL3\", \"XResolution\": \"59\", \"YResolution\": \"59\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 64778236,
                        "poseId": 64778236,
                        "path": "V:/Dev/3D modelling & CGI/Photoscan/Textures/BetonWallRough/20240201_134825.jpg",
                        "intrinsicId": 3897198293,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidthEstimation\": \"9.461585\", \"DateTime\": \"2024:02:01 13:48:25\", \"Exif:ApertureValue\": \"1.69\", \"Exif:BrightnessValue\": \"3.39\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2024:02:01 13:48:25\", \"Exif:DateTimeOriginal\": \"2024:02:01 13:48:25\", \"Exif:DigitalZoomRatio\": \"1\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"5.54\", \"Exif:FocalLengthIn35mmFilm\": \"23\", \"Exif:MaxApertureValue\": \"1.69\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"80\", \"Exif:PixelXDimension\": \"8160\", \"Exif:PixelYDimension\": \"3768\", \"Exif:SceneCaptureType\": \"0\", \"Exif:ShutterSpeedValue\": \"0.02\", \"Exif:SubsecTime\": \"676\", \"Exif:SubsecTimeDigitized\": \"676\", \"Exif:SubsecTimeOriginal\": \"676\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.02\", \"FNumber\": \"1.8\", \"Make\": \"samsung\", \"Model\": \"Galaxy A54 5G\", \"Orientation\": \"1\", \"ResolutionUnit\": \"cm\", \"Software\": \"A546BXXS6BWL3\", \"XResolution\": \"59\", \"YResolution\": \"59\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 314448026,
                        "poseId": 314448026,
                        "path": "V:/Dev/3D modelling & CGI/Photoscan/Textures/BetonWallRough/20240201_134733.jpg",
                        "intrinsicId": 3897198293,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidthEstimation\": \"9.461585\", \"DateTime\": \"2024:02:01 13:47:33\", \"Exif:ApertureValue\": \"1.69\", \"Exif:BrightnessValue\": \"0.91\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2024:02:01 13:47:33\", \"Exif:DateTimeOriginal\": \"2024:02:01 13:47:33\", \"Exif:DigitalZoomRatio\": \"1\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"5.54\", \"Exif:FocalLengthIn35mmFilm\": \"23\", \"Exif:MaxApertureValue\": \"1.69\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"200\", \"Exif:PixelXDimension\": \"8160\", \"Exif:PixelYDimension\": \"3768\", \"Exif:SceneCaptureType\": \"0\", \"Exif:ShutterSpeedValue\": \"0.02\", \"Exif:SubsecTime\": \"215\", \"Exif:SubsecTimeDigitized\": \"215\", \"Exif:SubsecTimeOriginal\": \"215\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.02\", \"FNumber\": \"1.8\", \"Make\": \"samsung\", \"Model\": \"Galaxy A54 5G\", \"Orientation\": \"1\", \"ResolutionUnit\": \"cm\", \"Software\": \"A546BXXS6BWL3\", \"XResolution\": \"59\", \"YResolution\": \"59\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 478719351,
                        "poseId": 478719351,
                        "path": "V:/Dev/3D modelling & CGI/Photoscan/Textures/BetonWallRough/20240201_134736.jpg",
                        "intrinsicId": 3897198293,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidthEstimation\": \"9.461585\", \"DateTime\": \"2024:02:01 13:47:36\", \"Exif:ApertureValue\": \"1.69\", \"Exif:BrightnessValue\": \"0.72\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2024:02:01 13:47:36\", \"Exif:DateTimeOriginal\": \"2024:02:01 13:47:36\", \"Exif:DigitalZoomRatio\": \"1\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"5.54\", \"Exif:FocalLengthIn35mmFilm\": \"23\", \"Exif:MaxApertureValue\": \"1.69\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"250\", \"Exif:PixelXDimension\": \"8160\", \"Exif:PixelYDimension\": \"3768\", \"Exif:SceneCaptureType\": \"0\", \"Exif:ShutterSpeedValue\": \"0.02\", \"Exif:SubsecTime\": \"580\", \"Exif:SubsecTimeDigitized\": \"580\", \"Exif:SubsecTimeOriginal\": \"580\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.02\", \"FNumber\": \"1.8\", \"Make\": \"samsung\", \"Model\": \"Galaxy A54 5G\", \"Orientation\": \"1\", \"ResolutionUnit\": \"cm\", \"Software\": \"A546BXXS6BWL3\", \"XResolution\": \"59\", \"YResolution\": \"59\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 765974537,
                        "poseId": 765974537,
                        "path": "V:/Dev/3D modelling & CGI/Photoscan/Textures/BetonWallRough/20240201_134731.jpg",
                        "intrinsicId": 3897198293,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidthEstimation\": \"9.461585\", \"DateTime\": \"2024:02:01 13:47:31\", \"Exif:ApertureValue\": \"1.69\", \"Exif:BrightnessValue\": \"0.91\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2024:02:01 13:47:31\", \"Exif:DateTimeOriginal\": \"2024:02:01 13:47:31\", \"Exif:DigitalZoomRatio\": \"1\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"5.54\", \"Exif:FocalLengthIn35mmFilm\": \"23\", \"Exif:MaxApertureValue\": \"1.69\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"200\", \"Exif:PixelXDimension\": \"8160\", \"Exif:PixelYDimension\": \"3768\", \"Exif:SceneCaptureType\": \"0\", \"Exif:ShutterSpeedValue\": \"0.02\", \"Exif:SubsecTime\": \"249\", \"Exif:SubsecTimeDigitized\": \"249\", \"Exif:SubsecTimeOriginal\": \"249\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.02\", \"FNumber\": \"1.8\", \"Make\": \"samsung\", \"Model\": \"Galaxy A54 5G\", \"Orientation\": \"1\", \"ResolutionUnit\": \"cm\", \"Software\": \"A546BXXS6BWL3\", \"XResolution\": \"59\", \"YResolution\": \"59\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1006136892,
                        "poseId": 1006136892,
                        "path": "V:/Dev/3D modelling & CGI/Photoscan/Textures/BetonWallRough/20240201_134735.jpg",
                        "intrinsicId": 3897198293,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidthEstimation\": \"9.461585\", \"DateTime\": \"2024:02:01 13:47:35\", \"Exif:ApertureValue\": \"1.69\", \"Exif:BrightnessValue\": \"0.79\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2024:02:01 13:47:35\", \"Exif:DateTimeOriginal\": \"2024:02:01 13:47:35\", \"Exif:DigitalZoomRatio\": \"1\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"5.54\", \"Exif:FocalLengthIn35mmFilm\": \"23\", \"Exif:MaxApertureValue\": \"1.69\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"250\", \"Exif:PixelXDimension\": \"8160\", \"Exif:PixelYDimension\": \"3768\", \"Exif:SceneCaptureType\": \"0\", \"Exif:ShutterSpeedValue\": \"0.02\", \"Exif:SubsecTime\": \"714\", \"Exif:SubsecTimeDigitized\": \"714\", \"Exif:SubsecTimeOriginal\": \"714\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.02\", \"FNumber\": \"1.8\", \"Make\": \"samsung\", \"Model\": \"Galaxy A54 5G\", \"Orientation\": \"1\", \"ResolutionUnit\": \"cm\", \"Software\": \"A546BXXS6BWL3\", \"XResolution\": \"59\", \"YResolution\": \"59\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1056268873,
                        "poseId": 1056268873,
                        "path": "V:/Dev/3D modelling & CGI/Photoscan/Textures/BetonWallRough/20240201_134739.jpg",
                        "intrinsicId": 3897198293,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidthEstimation\": \"9.461585\", \"DateTime\": \"2024:02:01 13:47:39\", \"Exif:ApertureValue\": \"1.69\", \"Exif:BrightnessValue\": \"0.54\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2024:02:01 13:47:39\", \"Exif:DateTimeOriginal\": \"2024:02:01 13:47:39\", \"Exif:DigitalZoomRatio\": \"1\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"5.54\", \"Exif:FocalLengthIn35mmFilm\": \"23\", \"Exif:MaxApertureValue\": \"1.69\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"200\", \"Exif:PixelXDimension\": \"8160\", \"Exif:PixelYDimension\": \"3768\", \"Exif:SceneCaptureType\": \"0\", \"Exif:ShutterSpeedValue\": \"0.030303\", \"Exif:SubsecTime\": \"469\", \"Exif:SubsecTimeDigitized\": \"469\", \"Exif:SubsecTimeOriginal\": \"469\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.030303\", \"FNumber\": \"1.8\", \"Make\": \"samsung\", \"Model\": \"Galaxy A54 5G\", \"Orientation\": \"1\", \"ResolutionUnit\": \"cm\", \"Software\": \"A546BXXS6BWL3\", \"XResolution\": \"59\", \"YResolution\": \"59\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1533182448,
                        "poseId": 1533182448,
                        "path": "V:/Dev/3D modelling & CGI/Photoscan/Textures/BetonWallRough/20240201_134743.jpg",
                        "intrinsicId": 3897198293,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidthEstimation\": \"9.461585\", \"DateTime\": \"2024:02:01 13:47:43\", \"Exif:ApertureValue\": \"1.69\", \"Exif:BrightnessValue\": \"0.81\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2024:02:01 13:47:43\", \"Exif:DateTimeOriginal\": \"2024:02:01 13:47:43\", \"Exif:DigitalZoomRatio\": \"1\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"5.54\", \"Exif:FocalLengthIn35mmFilm\": \"23\", \"Exif:MaxApertureValue\": \"1.69\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"200\", \"Exif:PixelXDimension\": \"8160\", \"Exif:PixelYDimension\": \"3768\", \"Exif:SceneCaptureType\": \"0\", \"Exif:ShutterSpeedValue\": \"0.02\", \"Exif:SubsecTime\": \"744\", \"Exif:SubsecTimeDigitized\": \"744\", \"Exif:SubsecTimeOriginal\": \"744\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.02\", \"FNumber\": \"1.8\", \"Make\": \"samsung\", \"Model\": \"Galaxy A54 5G\", \"Orientation\": \"1\", \"ResolutionUnit\": \"cm\", \"Software\": \"A546BXXS6BWL3\", \"XResolution\": \"59\", \"YResolution\": \"59\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1749140051,
                        "poseId": 1749140051,
                        "path": "V:/Dev/3D modelling & CGI/Photoscan/Textures/BetonWallRough/20240201_134734(0).jpg",
                        "intrinsicId": 3897198293,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidthEstimation\": \"9.461585\", \"DateTime\": \"2024:02:01 13:47:34\", \"Exif:ApertureValue\": \"1.69\", \"Exif:BrightnessValue\": \"0.82\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2024:02:01 13:47:34\", \"Exif:DateTimeOriginal\": \"2024:02:01 13:47:34\", \"Exif:DigitalZoomRatio\": \"1\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"5.54\", \"Exif:FocalLengthIn35mmFilm\": \"23\", \"Exif:MaxApertureValue\": \"1.69\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"250\", \"Exif:PixelXDimension\": \"8160\", \"Exif:PixelYDimension\": \"3768\", \"Exif:SceneCaptureType\": \"0\", \"Exif:ShutterSpeedValue\": \"0.02\", \"Exif:SubsecTime\": \"848\", \"Exif:SubsecTimeDigitized\": \"848\", \"Exif:SubsecTimeOriginal\": \"848\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.02\", \"FNumber\": \"1.8\", \"Make\": \"samsung\", \"Model\": \"Galaxy A54 5G\", \"Orientation\": \"1\", \"ResolutionUnit\": \"cm\", \"Software\": \"A546BXXS6BWL3\", \"XResolution\": \"59\", \"YResolution\": \"59\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1985804710,
                        "poseId": 1985804710,
                        "path": "V:/Dev/3D modelling & CGI/Photoscan/Textures/BetonWallRough/20240201_134742.jpg",
                        "intrinsicId": 3897198293,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidthEstimation\": \"9.461585\", \"DateTime\": \"2024:02:01 13:47:42\", \"Exif:ApertureValue\": \"1.69\", \"Exif:BrightnessValue\": \"0.83\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2024:02:01 13:47:42\", \"Exif:DateTimeOriginal\": \"2024:02:01 13:47:42\", \"Exif:DigitalZoomRatio\": \"1\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"5.54\", \"Exif:FocalLengthIn35mmFilm\": \"23\", \"Exif:MaxApertureValue\": \"1.69\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"200\", \"Exif:PixelXDimension\": \"8160\", \"Exif:PixelYDimension\": \"3768\", \"Exif:SceneCaptureType\": \"0\", \"Exif:ShutterSpeedValue\": \"0.02\", \"Exif:SubsecTime\": \"878\", \"Exif:SubsecTimeDigitized\": \"878\", \"Exif:SubsecTimeOriginal\": \"878\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.02\", \"FNumber\": \"1.8\", \"Make\": \"samsung\", \"Model\": \"Galaxy A54 5G\", \"Orientation\": \"1\", \"ResolutionUnit\": \"cm\", \"Software\": \"A546BXXS6BWL3\", \"XResolution\": \"59\", \"YResolution\": \"59\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2087568078,
                        "poseId": 2087568078,
                        "path": "V:/Dev/3D modelling & CGI/Photoscan/Textures/BetonWallRough/20240201_134734.jpg",
                        "intrinsicId": 3897198293,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidthEstimation\": \"9.461585\", \"DateTime\": \"2024:02:01 13:47:34\", \"Exif:ApertureValue\": \"1.69\", \"Exif:BrightnessValue\": \"0.83\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2024:02:01 13:47:34\", \"Exif:DateTimeOriginal\": \"2024:02:01 13:47:34\", \"Exif:DigitalZoomRatio\": \"1\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"0\", \"Exif:FocalLength\": \"5.54\", \"Exif:FocalLengthIn35mmFilm\": \"23\", \"Exif:MaxApertureValue\": \"1.69\", \"Exif:MeteringMode\": \"2\", \"Exif:OffsetTime\": \"+02:00\", \"Exif:OffsetTimeOriginal\": \"+02:00\", \"Exif:PhotographicSensitivity\": \"250\", \"Exif:PixelXDimension\": \"8160\", \"Exif:PixelYDimension\": \"3768\", \"Exif:SceneCaptureType\": \"0\", \"Exif:ShutterSpeedValue\": \"0.02\", \"Exif:SubsecTime\": \"248\", \"Exif:SubsecTimeDigitized\": \"248\", \"Exif:SubsecTimeOriginal\": \"248\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.02\", \"FNumber\": \"1.8\", \"Make\": \"samsung\", \"Model\": \"Galaxy A54 5G\", \"Orientation\": \"1\", \"ResolutionUnit\": \"cm\", \"Software\": \"A546BXXS6BWL3\", \"XResolution\": \"59\", \"YResolution\": \"59\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    }
                ],
                "intrinsics": [
                    {
                        "intrinsicId": 3897198293,
                        "initialFocalLength": 5.539999999999999,
                        "focalLength": 5.539999999999999,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 8160,
                        "height": 3768,
                        "sensorWidth": 9.46158469480404,
                        "sensorHeight": 4.36902587377716,
                        "serialNumber": "V:/Dev/3D modelling & CGI/Photoscan/Textures/BetonWallRough_samsung_Galaxy A54 5G",
                        "principalPoint": {
                            "x": 0.0,
                            "y": 0.0
                        },
                        "initializationMode": "estimated",
                        "distortionInitializationMode": "none",
                        "distortionParams": [
                            0.0,
                            0.0,
                            0.0
                        ],
                        "undistortionOffset": {
                            "x": 0.0,
                            "y": 0.0
                        },
                        "undistortionParams": [],
                        "locked": false
                    }
                ],
                "sensorDatabase": "${ALICEVISION_SENSOR_DB}",
                "lensCorrectionProfileInfo": "${ALICEVISION_LENS_PROFILE_INFO}",
                "lensCorrectionProfileSearchIgnoreCameraModel": true,
                "defaultFieldOfView": 45.0,
                "groupCameraFallback": "folder",
                "allowedCameraModels": [
                    "pinhole",
                    "radial1",
                    "radial3",
                    "brown",
                    "fisheye4",
                    "fisheye1",
                    "3deanamorphic4",
                    "3deradial4",
                    "3declassicld"
                ],
                "rawColorInterpretation": "LibRawWhiteBalancing",
                "colorProfileDatabase": "${ALICEVISION_COLOR_PROFILE_DB}",
                "errorOnMissingColorProfile": true,
                "viewIdMethod": "metadata",
                "viewIdRegex": ".*?(\\d+)",
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/cameraInit.sfm"
            }
        },
        "DepthMap_1": {
            "nodeType": "DepthMap",
            "position": [
                1200,
                0
            ],
            "parallelization": {
                "blockSize": 12,
                "size": 11,
                "split": 1
            },
            "uids": {
                "0": "549a32f506f6e457d0e44a2c277f8c9060adac5c"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{PrepareDenseScene_1.input}",
                "imagesFolder": "{PrepareDenseScene_1.output}",
                "downscale": 2,
                "minViewAngle": 2.0,
                "maxViewAngle": 70.0,
                "tiling": {
                    "tileBufferWidth": 1024,
                    "tileBufferHeight": 1024,
                    "tilePadding": 64,
                    "autoAdjustSmallImage": true
                },
                "chooseTCamsPerTile": true,
                "maxTCams": 10,
                "sgm": {
                    "sgmScale": 2,
                    "sgmStepXY": 2,
                    "sgmStepZ": -1,
                    "sgmMaxTCamsPerTile": 4,
                    "sgmWSH": 4,
                    "sgmUseSfmSeeds": true,
                    "sgmSeedsRangeInflate": 0.2,
                    "sgmDepthThicknessInflate": 0.0,
                    "sgmMaxSimilarity": 1.0,
                    "sgmGammaC": 5.5,
                    "sgmGammaP": 8.0,
                    "sgmP1": 10.0,
                    "sgmP2Weighting": 100.0,
                    "sgmMaxDepths": 1500,
                    "sgmFilteringAxes": "YX",
                    "sgmDepthListPerTile": true,
                    "sgmUseConsistentScale": false
                },
                "refine": {
                    "refineEnabled": true,
                    "refineScale": 1,
                    "refineStepXY": 1,
                    "refineMaxTCamsPerTile": 4,
                    "refineSubsampling": 10,
                    "refineHalfNbDepths": 15,
                    "refineWSH": 3,
                    "refineSigma": 15.0,
                    "refineGammaC": 15.5,
                    "refineGammaP": 8.0,
                    "refineInterpolateMiddleDepth": false,
                    "refineUseConsistentScale": false
                },
                "colorOptimization": {
                    "colorOptimizationEnabled": true,
                    "colorOptimizationNbIterations": 100
                },
                "customPatchPattern": {
                    "sgmUseCustomPatchPattern": false,
                    "refineUseCustomPatchPattern": false,
                    "customPatchPatternSubparts": [],
                    "customPatchPatternGroupSubpartsPerLevel": false
                },
                "intermediateResults": {
                    "exportIntermediateDepthSimMaps": false,
                    "exportIntermediateNormalMaps": false,
                    "exportIntermediateVolumes": false,
                    "exportIntermediateCrossVolumes": false,
                    "exportIntermediateTopographicCutVolumes": false,
                    "exportIntermediateVolume9pCsv": false,
                    "exportTilePattern": false
                },
                "nbGPUs": 0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "depth": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap.exr",
                "sim": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_simMap.exr",
                "tilePattern": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_tilePattern.obj",
                "depthSgm": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap_sgm.exr",
                "depthSgmUpscaled": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap_sgmUpscaled.exr",
                "depthRefined": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap_refinedFused.exr"
            }
        },
        "MeshFiltering_1": {
            "nodeType": "MeshFiltering",
            "position": [
                1800,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "e6915a8ab1c8c939f32a5c8dbf17205d305af407"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "inputMesh": "{Meshing_1.outputMesh}",
                "outputMeshFileType": "obj",
                "keepLargestMeshOnly": false,
                "smoothingSubset": "all",
                "smoothingBoundariesNeighbours": 0,
                "smoothingIterations": 5,
                "smoothingLambda": 1.0,
                "filteringSubset": "all",
                "filteringIterations": 1,
                "filterLargeTrianglesFactor": 60.0,
                "filterTrianglesRatio": 0.0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "outputMesh": "{cache}/{nodeType}/{uid0}/mesh.{outputMeshFileTypeValue}"
            }
        },
        "FeatureMatching_1": {
            "nodeType": "FeatureMatching",
            "position": [
                600,
                0
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 11,
                "split": 1
            },
            "uids": {
                "0": "359ec4160077bc8dc27d70a8a4fd235b7bfe5aa6"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_1.input}",
                "featuresFolders": "{ImageMatching_1.featuresFolders}",
                "imagePairsList": "{ImageMatching_1.output}",
                "describerTypes": "{FeatureExtraction_1.describerTypes}",
                "photometricMatchingMethod": "ANN_L2",
                "geometricEstimator": "acransac",
                "geometricFilterType": "fundamental_matrix",
                "distanceRatio": 0.8,
                "maxIteration": 2048,
                "geometricError": 0.0,
                "knownPosesGeometricErrorMax": 5.0,
                "minRequired2DMotion": -1.0,
                "maxMatches": 0,
                "savePutativeMatches": false,
                "crossMatching": false,
                "guidedMatching": false,
                "matchFromKnownCameraPoses": false,
                "exportDebugFiles": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }
        }
    }
}