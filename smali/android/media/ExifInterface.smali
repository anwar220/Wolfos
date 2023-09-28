# classes2.dex

.class public Landroid/media/ExifInterface;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ExifInterface$ByteOrderedDataOutputStream;,
        Landroid/media/ExifInterface$ByteOrderedDataInputStream;,
        Landroid/media/ExifInterface$IfdType;,
        Landroid/media/ExifInterface$ExifTag;,
        Landroid/media/ExifInterface$ExifAttribute;,
        Landroid/media/ExifInterface$Rational;,
        Landroid/media/ExifInterface$ExifStreamType;
    }
.end annotation


# static fields
.field private static final ASCII:Ljava/nio/charset/Charset;

.field private static final BITS_PER_SAMPLE_GREYSCALE_1:[I

.field private static final BITS_PER_SAMPLE_GREYSCALE_2:[I

.field private static final BITS_PER_SAMPLE_RGB:[I

.field private static final BYTE_ALIGN_II:S = 0x4949s

.field private static final BYTE_ALIGN_MM:S = 0x4d4ds

.field private static final DATA_DEFLATE_ZIP:I = 0x8

.field private static final DATA_HUFFMAN_COMPRESSED:I = 0x2

.field private static final DATA_JPEG:I = 0x6

.field private static final DATA_JPEG_COMPRESSED:I = 0x7

.field private static final DATA_LOSSY_JPEG:I = 0x884c

.field private static final DATA_PACK_BITS_COMPRESSED:I = 0x8005

.field private static final DATA_UNCOMPRESSED:I = 0x1

.field private static final DEBUG:Z

.field private static final EXIF_ASCII_PREFIX:[B

.field private static final EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

.field private static final HEIF_BRAND_AVIF:[B

.field private static final HEIF_BRAND_AVIS:[B

.field private static final HEIF_BRAND_HEIC:[B

.field private static final HEIF_BRAND_MIF1:[B

.field private static final HEIF_TYPE_FTYP:[B

.field private static final IDENTIFIER_EXIF_APP1:[B

.field private static final IDENTIFIER_XMP_APP1:[B

.field private static final IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_FORMAT_BYTE:I = 0x1

.field private static final IFD_FORMAT_BYTES_PER_FORMAT:[I

.field private static final IFD_FORMAT_DOUBLE:I = 0xc

.field private static final IFD_FORMAT_IFD:I = 0xd

.field private static final IFD_FORMAT_NAMES:[Ljava/lang/String;

.field private static final IFD_FORMAT_SBYTE:I = 0x6

.field private static final IFD_FORMAT_SINGLE:I = 0xb

.field private static final IFD_FORMAT_SLONG:I = 0x9

.field private static final IFD_FORMAT_SRATIONAL:I = 0xa

.field private static final IFD_FORMAT_SSHORT:I = 0x8

.field private static final IFD_FORMAT_STRING:I = 0x2

.field private static final IFD_FORMAT_ULONG:I = 0x4

.field private static final IFD_FORMAT_UNDEFINED:I = 0x7

.field private static final IFD_FORMAT_URATIONAL:I = 0x5

.field private static final IFD_FORMAT_USHORT:I = 0x3

.field private static final IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_OFFSET:I = 0x8

.field private static final IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final IFD_TYPE_EXIF:I = 0x1

.field private static final IFD_TYPE_GPS:I = 0x2

.field private static final IFD_TYPE_INTEROPERABILITY:I = 0x3

.field private static final IFD_TYPE_ORF_CAMERA_SETTINGS:I = 0x7

.field private static final IFD_TYPE_ORF_IMAGE_PROCESSING:I = 0x8

.field private static final IFD_TYPE_ORF_MAKER_NOTE:I = 0x6

.field private static final IFD_TYPE_PEF:I = 0x9

.field private static final IFD_TYPE_PREVIEW:I = 0x5

.field private static final IFD_TYPE_PRIMARY:I = 0x0

.field private static final IFD_TYPE_THUMBNAIL:I = 0x4

.field private static final IMAGE_TYPE_ARW:I = 0x1

.field private static final IMAGE_TYPE_CR2:I = 0x2

.field private static final IMAGE_TYPE_DNG:I = 0x3

.field private static final IMAGE_TYPE_HEIF:I = 0xc

.field private static final IMAGE_TYPE_JPEG:I = 0x4

.field private static final IMAGE_TYPE_NEF:I = 0x5

.field private static final IMAGE_TYPE_NRW:I = 0x6

.field private static final IMAGE_TYPE_ORF:I = 0x7

.field private static final IMAGE_TYPE_PEF:I = 0x8

.field private static final IMAGE_TYPE_PNG:I = 0xd

.field private static final IMAGE_TYPE_RAF:I = 0x9

.field private static final IMAGE_TYPE_RW2:I = 0xa

.field private static final IMAGE_TYPE_SRW:I = 0xb

.field private static final IMAGE_TYPE_UNKNOWN:I = 0x0

.field private static final IMAGE_TYPE_WEBP:I = 0xe

.field private static final JPEG_SIGNATURE:[B

.field private static final MARKER:B = -0x1t

.field private static final MARKER_APP1:B = -0x1ft

.field private static final MARKER_COM:B = -0x2t

.field private static final MARKER_EOI:B = -0x27t

.field private static final MARKER_SOF0:B = -0x40t

.field private static final MARKER_SOF1:B = -0x3ft

.field private static final MARKER_SOF10:B = -0x36t

.field private static final MARKER_SOF11:B = -0x35t

.field private static final MARKER_SOF13:B = -0x33t

.field private static final MARKER_SOF14:B = -0x32t

.field private static final MARKER_SOF15:B = -0x31t

.field private static final MARKER_SOF2:B = -0x3et

.field private static final MARKER_SOF3:B = -0x3dt

.field private static final MARKER_SOF5:B = -0x3bt

.field private static final MARKER_SOF6:B = -0x3at

.field private static final MARKER_SOF7:B = -0x39t

.field private static final MARKER_SOF9:B = -0x37t

.field private static final MARKER_SOI:B = -0x28t

.field private static final MARKER_SOS:B = -0x26t

.field private static final MAX_THUMBNAIL_SIZE:I = 0x200

.field private static final ORF_CAMERA_SETTINGS_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final ORF_IMAGE_PROCESSING_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final ORF_MAKER_NOTE_HEADER_1:[B

.field private static final ORF_MAKER_NOTE_HEADER_1_SIZE:I = 0x8

.field private static final ORF_MAKER_NOTE_HEADER_2:[B

.field private static final ORF_MAKER_NOTE_HEADER_2_SIZE:I = 0xc

.field private static final ORF_MAKER_NOTE_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final ORF_SIGNATURE_1:S = 0x4f52s

.field private static final ORF_SIGNATURE_2:S = 0x5352s

.field public static final ORIENTATION_FLIP_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_FLIP_VERTICAL:I = 0x4

.field public static final ORIENTATION_NORMAL:I = 0x1

.field public static final ORIENTATION_ROTATE_180:I = 0x3

.field public static final ORIENTATION_ROTATE_270:I = 0x8

.field public static final ORIENTATION_ROTATE_90:I = 0x6

.field public static final ORIENTATION_TRANSPOSE:I = 0x5

.field public static final ORIENTATION_TRANSVERSE:I = 0x7

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field private static final ORIGINAL_RESOLUTION_IMAGE:I = 0x0

.field private static final PEF_MAKER_NOTE_SKIP_SIZE:I = 0x6

.field private static final PEF_SIGNATURE:Ljava/lang/String; = "PENTAX"

.field private static final PEF_TAGS:[Landroid/media/ExifInterface$ExifTag;

.field private static final PHOTOMETRIC_INTERPRETATION_BLACK_IS_ZERO:I = 0x1

.field private static final PHOTOMETRIC_INTERPRETATION_RGB:I = 0x2

.field private static final PHOTOMETRIC_INTERPRETATION_WHITE_IS_ZERO:I = 0x0

.field private static final PHOTOMETRIC_INTERPRETATION_YCBCR:I = 0x6

.field private static final PNG_CHUNK_CRC_BYTE_LENGTH:I = 0x4

.field private static final PNG_CHUNK_TYPE_BYTE_LENGTH:I = 0x4

.field private static final PNG_CHUNK_TYPE_EXIF:[B

.field private static final PNG_CHUNK_TYPE_IEND:[B

.field private static final PNG_CHUNK_TYPE_IHDR:[B

.field private static final PNG_SIGNATURE:[B

.field private static final RAF_INFO_SIZE:I = 0xa0

.field private static final RAF_JPEG_LENGTH_VALUE_SIZE:I = 0x4

.field private static final RAF_OFFSET_TO_JPEG_IMAGE_OFFSET:I = 0x54

.field private static final RAF_SIGNATURE:Ljava/lang/String; = "FUJIFILMCCD-RAW"

.field private static final REDUCED_RESOLUTION_IMAGE:I = 0x1

.field private static final RW2_SIGNATURE:S = 0x55s

.field private static final SIGNATURE_CHECK_SIZE:I = 0x1388

.field private static final START_CODE:B = 0x2at

.field public static final STREAM_TYPE_EXIF_DATA_ONLY:I = 0x1

.field public static final STREAM_TYPE_FULL_IMAGE_DATA:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ExifInterface"

.field public static final TAG_APERTURE:Ljava/lang/String; = "FNumber"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_APERTURE_VALUE:Ljava/lang/String; = "ApertureValue"

.field public static final TAG_ARTIST:Ljava/lang/String; = "Artist"

.field public static final TAG_BITS_PER_SAMPLE:Ljava/lang/String; = "BitsPerSample"

.field public static final TAG_BRIGHTNESS_VALUE:Ljava/lang/String; = "BrightnessValue"

.field public static final TAG_CFA_PATTERN:Ljava/lang/String; = "CFAPattern"

.field public static final TAG_COLOR_SPACE:Ljava/lang/String; = "ColorSpace"

.field public static final TAG_COMPONENTS_CONFIGURATION:Ljava/lang/String; = "ComponentsConfiguration"

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:Ljava/lang/String; = "CompressedBitsPerPixel"

.field public static final TAG_COMPRESSION:Ljava/lang/String; = "Compression"

.field public static final TAG_CONTRAST:Ljava/lang/String; = "Contrast"

.field public static final TAG_COPYRIGHT:Ljava/lang/String; = "Copyright"

.field public static final TAG_CUSTOM_RENDERED:Ljava/lang/String; = "CustomRendered"

.field public static final TAG_DATETIME:Ljava/lang/String; = "DateTime"

.field public static final TAG_DATETIME_DIGITIZED:Ljava/lang/String; = "DateTimeDigitized"

.field public static final TAG_DATETIME_ORIGINAL:Ljava/lang/String; = "DateTimeOriginal"

.field public static final TAG_DEFAULT_CROP_SIZE:Ljava/lang/String; = "DefaultCropSize"

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:Ljava/lang/String; = "DeviceSettingDescription"

.field public static final TAG_DIGITAL_ZOOM_RATIO:Ljava/lang/String; = "DigitalZoomRatio"

.field public static final TAG_DNG_VERSION:Ljava/lang/String; = "DNGVersion"

.field private static final TAG_EXIF_IFD_POINTER:Ljava/lang/String; = "ExifIFDPointer"

.field public static final TAG_EXIF_VERSION:Ljava/lang/String; = "ExifVersion"

.field public static final TAG_EXPOSURE_BIAS_VALUE:Ljava/lang/String; = "ExposureBiasValue"

.field public static final TAG_EXPOSURE_INDEX:Ljava/lang/String; = "ExposureIndex"

.field public static final TAG_EXPOSURE_MODE:Ljava/lang/String; = "ExposureMode"

.field public static final TAG_EXPOSURE_PROGRAM:Ljava/lang/String; = "ExposureProgram"

.field public static final TAG_EXPOSURE_TIME:Ljava/lang/String; = "ExposureTime"

.field public static final TAG_FILE_SOURCE:Ljava/lang/String; = "FileSource"

.field public static final TAG_FLASH:Ljava/lang/String; = "Flash"

.field public static final TAG_FLASHPIX_VERSION:Ljava/lang/String; = "FlashpixVersion"

.field public static final TAG_FLASH_ENERGY:Ljava/lang/String; = "FlashEnergy"

.field public static final TAG_FOCAL_LENGTH:Ljava/lang/String; = "FocalLength"

.field public static final TAG_FOCAL_LENGTH_IN_35MM_FILM:Ljava/lang/String; = "FocalLengthIn35mmFilm"

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:Ljava/lang/String; = "FocalPlaneResolutionUnit"

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:Ljava/lang/String; = "FocalPlaneXResolution"

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:Ljava/lang/String; = "FocalPlaneYResolution"

.field public static final TAG_F_NUMBER:Ljava/lang/String; = "FNumber"

.field public static final TAG_GAIN_CONTROL:Ljava/lang/String; = "GainControl"

.field public static final TAG_GPS_ALTITUDE:Ljava/lang/String; = "GPSAltitude"

.field public static final TAG_GPS_ALTITUDE_REF:Ljava/lang/String; = "GPSAltitudeRef"

.field public static final TAG_GPS_AREA_INFORMATION:Ljava/lang/String; = "GPSAreaInformation"

.field public static final TAG_GPS_DATESTAMP:Ljava/lang/String; = "GPSDateStamp"

.field public static final TAG_GPS_DEST_BEARING:Ljava/lang/String; = "GPSDestBearing"

.field public static final TAG_GPS_DEST_BEARING_REF:Ljava/lang/String; = "GPSDestBearingRef"

.field public static final TAG_GPS_DEST_DISTANCE:Ljava/lang/String; = "GPSDestDistance"

.field public static final TAG_GPS_DEST_DISTANCE_REF:Ljava/lang/String; = "GPSDestDistanceRef"

.field public static final TAG_GPS_DEST_LATITUDE:Ljava/lang/String; = "GPSDestLatitude"

.field public static final TAG_GPS_DEST_LATITUDE_REF:Ljava/lang/String; = "GPSDestLatitudeRef"

.field public static final TAG_GPS_DEST_LONGITUDE:Ljava/lang/String; = "GPSDestLongitude"

.field public static final TAG_GPS_DEST_LONGITUDE_REF:Ljava/lang/String; = "GPSDestLongitudeRef"

.field public static final TAG_GPS_DIFFERENTIAL:Ljava/lang/String; = "GPSDifferential"

.field public static final TAG_GPS_DOP:Ljava/lang/String; = "GPSDOP"

.field public static final TAG_GPS_IMG_DIRECTION:Ljava/lang/String; = "GPSImgDirection"

.field public static final TAG_GPS_IMG_DIRECTION_REF:Ljava/lang/String; = "GPSImgDirectionRef"

.field private static final TAG_GPS_INFO_IFD_POINTER:Ljava/lang/String; = "GPSInfoIFDPointer"

.field public static final TAG_GPS_LATITUDE:Ljava/lang/String; = "GPSLatitude"

.field public static final TAG_GPS_LATITUDE_REF:Ljava/lang/String; = "GPSLatitudeRef"

.field public static final TAG_GPS_LONGITUDE:Ljava/lang/String; = "GPSLongitude"

.field public static final TAG_GPS_LONGITUDE_REF:Ljava/lang/String; = "GPSLongitudeRef"

.field public static final TAG_GPS_MAP_DATUM:Ljava/lang/String; = "GPSMapDatum"

.field public static final TAG_GPS_MEASURE_MODE:Ljava/lang/String; = "GPSMeasureMode"

.field public static final TAG_GPS_PROCESSING_METHOD:Ljava/lang/String; = "GPSProcessingMethod"

.field public static final TAG_GPS_SATELLITES:Ljava/lang/String; = "GPSSatellites"

.field public static final TAG_GPS_SPEED:Ljava/lang/String; = "GPSSpeed"

.field public static final TAG_GPS_SPEED_REF:Ljava/lang/String; = "GPSSpeedRef"

.field public static final TAG_GPS_STATUS:Ljava/lang/String; = "GPSStatus"

.field public static final TAG_GPS_TIMESTAMP:Ljava/lang/String; = "GPSTimeStamp"

.field public static final TAG_GPS_TRACK:Ljava/lang/String; = "GPSTrack"

.field public static final TAG_GPS_TRACK_REF:Ljava/lang/String; = "GPSTrackRef"

.field public static final TAG_GPS_VERSION_ID:Ljava/lang/String; = "GPSVersionID"

.field private static final TAG_HAS_THUMBNAIL:Ljava/lang/String; = "HasThumbnail"

.field public static final TAG_IMAGE_DESCRIPTION:Ljava/lang/String; = "ImageDescription"

.field public static final TAG_IMAGE_LENGTH:Ljava/lang/String; = "ImageLength"

.field public static final TAG_IMAGE_UNIQUE_ID:Ljava/lang/String; = "ImageUniqueID"

.field public static final TAG_IMAGE_WIDTH:Ljava/lang/String; = "ImageWidth"

.field private static final TAG_INTEROPERABILITY_IFD_POINTER:Ljava/lang/String; = "InteroperabilityIFDPointer"

.field public static final TAG_INTEROPERABILITY_INDEX:Ljava/lang/String; = "InteroperabilityIndex"

.field public static final TAG_ISO:Ljava/lang/String; = "ISOSpeedRatings"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_ISO_SPEED_RATINGS:Ljava/lang/String; = "ISOSpeedRatings"

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:Ljava/lang/String; = "JPEGInterchangeFormat"

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:Ljava/lang/String; = "JPEGInterchangeFormatLength"

.field public static final TAG_LIGHT_SOURCE:Ljava/lang/String; = "LightSource"

.field public static final TAG_MAKE:Ljava/lang/String; = "Make"

.field public static final TAG_MAKER_NOTE:Ljava/lang/String; = "MakerNote"

.field public static final TAG_MAX_APERTURE_VALUE:Ljava/lang/String; = "MaxApertureValue"

.field public static final TAG_METERING_MODE:Ljava/lang/String; = "MeteringMode"

.field public static final TAG_MODEL:Ljava/lang/String; = "Model"

.field public static final TAG_NEW_SUBFILE_TYPE:Ljava/lang/String; = "NewSubfileType"

.field public static final TAG_OECF:Ljava/lang/String; = "OECF"

.field public static final TAG_OFFSET_TIME:Ljava/lang/String; = "OffsetTime"

.field public static final TAG_OFFSET_TIME_DIGITIZED:Ljava/lang/String; = "OffsetTimeDigitized"

.field public static final TAG_OFFSET_TIME_ORIGINAL:Ljava/lang/String; = "OffsetTimeOriginal"

.field public static final TAG_ORF_ASPECT_FRAME:Ljava/lang/String; = "AspectFrame"

.field private static final TAG_ORF_CAMERA_SETTINGS_IFD_POINTER:Ljava/lang/String; = "CameraSettingsIFDPointer"

.field private static final TAG_ORF_IMAGE_PROCESSING_IFD_POINTER:Ljava/lang/String; = "ImageProcessingIFDPointer"

.field public static final TAG_ORF_PREVIEW_IMAGE_LENGTH:Ljava/lang/String; = "PreviewImageLength"

.field public static final TAG_ORF_PREVIEW_IMAGE_START:Ljava/lang/String; = "PreviewImageStart"

.field public static final TAG_ORF_THUMBNAIL_IMAGE:Ljava/lang/String; = "ThumbnailImage"

.field public static final TAG_ORIENTATION:Ljava/lang/String; = "Orientation"

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:Ljava/lang/String; = "PhotometricInterpretation"

.field public static final TAG_PIXEL_X_DIMENSION:Ljava/lang/String; = "PixelXDimension"

.field public static final TAG_PIXEL_Y_DIMENSION:Ljava/lang/String; = "PixelYDimension"

.field public static final TAG_PLANAR_CONFIGURATION:Ljava/lang/String; = "PlanarConfiguration"

.field public static final TAG_PRIMARY_CHROMATICITIES:Ljava/lang/String; = "PrimaryChromaticities"

.field private static final TAG_RAF_IMAGE_SIZE:Landroid/media/ExifInterface$ExifTag;

.field public static final TAG_REFERENCE_BLACK_WHITE:Ljava/lang/String; = "ReferenceBlackWhite"

.field public static final TAG_RELATED_SOUND_FILE:Ljava/lang/String; = "RelatedSoundFile"

.field public static final TAG_RESOLUTION_UNIT:Ljava/lang/String; = "ResolutionUnit"

.field public static final TAG_ROWS_PER_STRIP:Ljava/lang/String; = "RowsPerStrip"

.field public static final TAG_RW2_ISO:Ljava/lang/String; = "ISO"

.field public static final TAG_RW2_JPG_FROM_RAW:Ljava/lang/String; = "JpgFromRaw"

.field public static final TAG_RW2_SENSOR_BOTTOM_BORDER:Ljava/lang/String; = "SensorBottomBorder"

.field public static final TAG_RW2_SENSOR_LEFT_BORDER:Ljava/lang/String; = "SensorLeftBorder"

.field public static final TAG_RW2_SENSOR_RIGHT_BORDER:Ljava/lang/String; = "SensorRightBorder"

.field public static final TAG_RW2_SENSOR_TOP_BORDER:Ljava/lang/String; = "SensorTopBorder"

.field public static final TAG_SAMPLES_PER_PIXEL:Ljava/lang/String; = "SamplesPerPixel"

.field public static final TAG_SATURATION:Ljava/lang/String; = "Saturation"

.field public static final TAG_SCENE_CAPTURE_TYPE:Ljava/lang/String; = "SceneCaptureType"

.field public static final TAG_SCENE_TYPE:Ljava/lang/String; = "SceneType"

.field public static final TAG_SENSING_METHOD:Ljava/lang/String; = "SensingMethod"

.field public static final TAG_SHARPNESS:Ljava/lang/String; = "Sharpness"

.field public static final TAG_SHUTTER_SPEED_VALUE:Ljava/lang/String; = "ShutterSpeedValue"

.field public static final TAG_SOFTWARE:Ljava/lang/String; = "Software"

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:Ljava/lang/String; = "SpatialFrequencyResponse"

.field public static final TAG_SPECTRAL_SENSITIVITY:Ljava/lang/String; = "SpectralSensitivity"

.field public static final TAG_STRIP_BYTE_COUNTS:Ljava/lang/String; = "StripByteCounts"

.field public static final TAG_STRIP_OFFSETS:Ljava/lang/String; = "StripOffsets"

.field public static final TAG_SUBFILE_TYPE:Ljava/lang/String; = "SubfileType"

.field public static final TAG_SUBJECT_AREA:Ljava/lang/String; = "SubjectArea"

.field public static final TAG_SUBJECT_DISTANCE:Ljava/lang/String; = "SubjectDistance"

.field public static final TAG_SUBJECT_DISTANCE_RANGE:Ljava/lang/String; = "SubjectDistanceRange"

.field public static final TAG_SUBJECT_LOCATION:Ljava/lang/String; = "SubjectLocation"

.field public static final TAG_SUBSEC_TIME:Ljava/lang/String; = "SubSecTime"

.field public static final TAG_SUBSEC_TIME_DIG:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final TAG_SUBSEC_TIME_DIGITIZED:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final TAG_SUBSEC_TIME_ORIG:Ljava/lang/String; = "SubSecTimeOriginal"

.field public static final TAG_SUBSEC_TIME_ORIGINAL:Ljava/lang/String; = "SubSecTimeOriginal"

.field private static final TAG_SUB_IFD_POINTER:Ljava/lang/String; = "SubIFDPointer"

.field private static final TAG_THUMBNAIL_DATA:Ljava/lang/String; = "ThumbnailData"

.field public static final TAG_THUMBNAIL_IMAGE_LENGTH:Ljava/lang/String; = "ThumbnailImageLength"

.field public static final TAG_THUMBNAIL_IMAGE_WIDTH:Ljava/lang/String; = "ThumbnailImageWidth"

.field private static final TAG_THUMBNAIL_LENGTH:Ljava/lang/String; = "ThumbnailLength"

.field private static final TAG_THUMBNAIL_OFFSET:Ljava/lang/String; = "ThumbnailOffset"

.field public static final TAG_THUMBNAIL_ORIENTATION:Ljava/lang/String; = "ThumbnailOrientation"

.field public static final TAG_TRANSFER_FUNCTION:Ljava/lang/String; = "TransferFunction"

.field public static final TAG_USER_COMMENT:Ljava/lang/String; = "UserComment"

.field public static final TAG_WHITE_BALANCE:Ljava/lang/String; = "WhiteBalance"

.field public static final TAG_WHITE_POINT:Ljava/lang/String; = "WhitePoint"

.field public static final TAG_XMP:Ljava/lang/String; = "Xmp"

.field public static final TAG_X_RESOLUTION:Ljava/lang/String; = "XResolution"

.field public static final TAG_Y_CB_CR_COEFFICIENTS:Ljava/lang/String; = "YCbCrCoefficients"

.field public static final TAG_Y_CB_CR_POSITIONING:Ljava/lang/String; = "YCbCrPositioning"

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:Ljava/lang/String; = "YCbCrSubSampling"

.field public static final TAG_Y_RESOLUTION:Ljava/lang/String; = "YResolution"

.field private static final WEBP_CHUNK_SIZE_BYTE_LENGTH:I = 0x4

.field private static final WEBP_CHUNK_TYPE_ANIM:[B

.field private static final WEBP_CHUNK_TYPE_ANMF:[B

.field private static final WEBP_CHUNK_TYPE_BYTE_LENGTH:I = 0x4

.field private static final WEBP_CHUNK_TYPE_EXIF:[B

.field private static final WEBP_CHUNK_TYPE_VP8:[B

.field private static final WEBP_CHUNK_TYPE_VP8L:[B

.field private static final WEBP_CHUNK_TYPE_VP8X:[B

.field private static final WEBP_CHUNK_TYPE_VP8X_DEFAULT_LENGTH:I = 0xa

.field private static final WEBP_FILE_SIZE_BYTE_LENGTH:I = 0x4

.field private static final WEBP_SIGNATURE_1:[B

.field private static final WEBP_SIGNATURE_2:[B

.field private static final WEBP_VP8L_SIGNATURE:B = 0x2ft

.field private static final WEBP_VP8_SIGNATURE:[B

.field public static final WHITEBALANCE_AUTO:I = 0x0

.field public static final WHITEBALANCE_MANUAL:I = 0x1

.field private static final sExifPointerTagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sExifTagMapsForReading:[Ljava/util/HashMap;

.field private static final sExifTagMapsForWriting:[Ljava/util/HashMap;

.field private static sFormatter:Ljava/text/SimpleDateFormat;

.field private static sFormatterTz:Ljava/text/SimpleDateFormat;

.field private static final sGpsTimestampPattern:Ljava/util/regex/Pattern;

.field private static final sNonZeroTimePattern:Ljava/util/regex/Pattern;

.field private static final sTagSetForCompatibility:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAreThumbnailStripsConsecutive:Z

.field private mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field private final mAttributes:[Ljava/util/HashMap;

.field private mExifByteOrder:Ljava/nio/ByteOrder;

.field private mExifOffset:I

.field private mFilename:Ljava/lang/String;

.field private mHandledIfdOffsets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHasThumbnail:Z

.field private mHasThumbnailStrips:Z

.field private mIsExifDataOnly:Z

.field private mIsInputStream:Z

.field private mIsSupportedFile:Z

.field private mMimeType:I

.field private mModified:Z

.field private mOrfMakerNoteOffset:I

.field private mOrfThumbnailLength:I

.field private mOrfThumbnailOffset:I

.field private mRw2JpgFromRawOffset:I

.field private mSeekableFileDescriptor:Ljava/io/FileDescriptor;

.field private mThumbnailBytes:[B

.field private mThumbnailCompression:I

.field private mThumbnailLength:I

.field private mThumbnailOffset:I

.field private mXmpIsFromSeparateMarker:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetASCII()Ljava/nio/charset/Charset;
    .registers 1

    sget-object v0, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetEXIF_ASCII_PREFIX()[B
    .registers 1

    sget-object v0, Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetIFD_FORMAT_BYTES_PER_FORMAT()[I
    .registers 1

    sget-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetIFD_FORMAT_NAMES()[Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 38

    const-string v0, "ExifInterface"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    new-array v0, v1, [B

    fill-array-data v0, :array_bf6

    sput-object v0, Landroid/media/ExifInterface;->JPEG_SIGNATURE:[B

    const/4 v0, 0x4

    new-array v2, v0, [B

    fill-array-data v2, :array_bfc

    sput-object v2, Landroid/media/ExifInterface;->HEIF_TYPE_FTYP:[B

    new-array v2, v0, [B

    fill-array-data v2, :array_c02

    sput-object v2, Landroid/media/ExifInterface;->HEIF_BRAND_MIF1:[B

    new-array v2, v0, [B

    fill-array-data v2, :array_c08

    sput-object v2, Landroid/media/ExifInterface;->HEIF_BRAND_HEIC:[B

    new-array v2, v0, [B

    fill-array-data v2, :array_c0e

    sput-object v2, Landroid/media/ExifInterface;->HEIF_BRAND_AVIF:[B

    new-array v2, v0, [B

    fill-array-data v2, :array_c14

    sput-object v2, Landroid/media/ExifInterface;->HEIF_BRAND_AVIS:[B

    const/4 v2, 0x6

    new-array v3, v2, [B

    fill-array-data v3, :array_c1a

    sput-object v3, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    const/16 v3, 0xa

    new-array v4, v3, [B

    fill-array-data v4, :array_c22

    sput-object v4, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    const/16 v4, 0x8

    new-array v5, v4, [B

    fill-array-data v5, :array_c2c

    sput-object v5, Landroid/media/ExifInterface;->PNG_SIGNATURE:[B

    new-array v5, v0, [B

    fill-array-data v5, :array_c34

    sput-object v5, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_EXIF:[B

    new-array v5, v0, [B

    fill-array-data v5, :array_c3a

    sput-object v5, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_IHDR:[B

    new-array v5, v0, [B

    fill-array-data v5, :array_c40

    sput-object v5, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_IEND:[B

    new-array v5, v0, [B

    fill-array-data v5, :array_c46

    sput-object v5, Landroid/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    new-array v5, v0, [B

    fill-array-data v5, :array_c4c

    sput-object v5, Landroid/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    new-array v5, v0, [B

    fill-array-data v5, :array_c52

    sput-object v5, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    new-array v5, v1, [B

    fill-array-data v5, :array_c58

    sput-object v5, Landroid/media/ExifInterface;->WEBP_VP8_SIGNATURE:[B

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    const-string v6, "VP8X"

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    sput-object v5, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8X:[B

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    const-string v6, "VP8L"

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    sput-object v5, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    const-string v6, "VP8 "

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    sput-object v5, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    const-string v6, "ANIM"

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    sput-object v5, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_ANIM:[B

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    const-string v6, "ANMF"

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    sput-object v5, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_ANMF:[B

    const-string v6, ""

    const-string v7, "BYTE"

    const-string v8, "STRING"

    const-string v9, "USHORT"

    const-string v10, "ULONG"

    const-string v11, "URATIONAL"

    const-string v12, "SBYTE"

    const-string v13, "UNDEFINED"

    const-string v14, "SSHORT"

    const-string v15, "SLONG"

    const-string v16, "SRATIONAL"

    const-string v17, "SINGLE"

    const-string v18, "DOUBLE"

    const-string v19, "IFD"

    filled-new-array/range {v6 .. v19}, [Ljava/lang/String;

    move-result-object v5

    sput-object v5, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    const/16 v5, 0xe

    new-array v6, v5, [I

    fill-array-data v6, :array_c5e

    sput-object v6, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    new-array v6, v4, [B

    fill-array-data v6, :array_c7e

    sput-object v6, Landroid/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    new-array v6, v1, [I

    fill-array-data v6, :array_c86

    sput-object v6, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    const/4 v6, 0x1

    new-array v7, v6, [I

    const/4 v8, 0x0

    aput v0, v7, v8

    sput-object v7, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_1:[I

    new-array v7, v6, [I

    aput v4, v7, v8

    sput-object v7, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    const/16 v7, 0x2a

    new-array v7, v7, [Landroid/media/ExifInterface$ExifTag;

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v10, "NewSubfileType"

    const/16 v11, 0xfe

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v7, v8

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v10, "SubfileType"

    const/16 v11, 0xff

    invoke-direct {v9, v10, v11, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v7, v6

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "ImageWidth"

    const/16 v15, 0x100

    const/16 v16, 0x3

    const/16 v17, 0x4

    const/16 v18, 0x0

    move-object v13, v9

    invoke-direct/range {v13 .. v18}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/4 v10, 0x2

    aput-object v9, v7, v10

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "ImageLength"

    const/16 v15, 0x101

    move-object v13, v9

    invoke-direct/range {v13 .. v18}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v7, v1

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "BitsPerSample"

    const/16 v13, 0x102

    invoke-direct {v9, v11, v13, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v7, v0

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "Compression"

    const/16 v13, 0x103

    invoke-direct {v9, v11, v13, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/4 v11, 0x5

    aput-object v9, v7, v11

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "PhotometricInterpretation"

    const/16 v14, 0x106

    invoke-direct {v9, v13, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v7, v2

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "ImageDescription"

    const/16 v14, 0x10e

    invoke-direct {v9, v13, v14, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/4 v13, 0x7

    aput-object v9, v7, v13

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "Make"

    const/16 v15, 0x10f

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v7, v4

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "Model"

    const/16 v15, 0x110

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x9

    aput-object v9, v7, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v16, "StripOffsets"

    const/16 v17, 0x111

    const/16 v18, 0x3

    const/16 v19, 0x4

    const/16 v20, 0x0

    move-object v15, v9

    invoke-direct/range {v15 .. v20}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v7, v3

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "Orientation"

    const/16 v3, 0x112

    invoke-direct {v9, v15, v3, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v3, 0xb

    aput-object v9, v7, v3

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "SamplesPerPixel"

    const/16 v3, 0x115

    invoke-direct {v9, v15, v3, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v3, 0xc

    aput-object v9, v7, v3

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v19, "RowsPerStrip"

    const/16 v20, 0x116

    const/16 v21, 0x3

    const/16 v22, 0x4

    const/16 v23, 0x0

    move-object/from16 v18, v9

    invoke-direct/range {v18 .. v23}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v15, 0xd

    aput-object v9, v7, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v19, "StripByteCounts"

    const/16 v20, 0x117

    move-object/from16 v18, v9

    invoke-direct/range {v18 .. v23}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v7, v5

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "XResolution"

    const/16 v15, 0x11a

    invoke-direct {v9, v5, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0xf

    aput-object v9, v7, v5

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "YResolution"

    const/16 v5, 0x11b

    invoke-direct {v9, v15, v5, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x10

    aput-object v9, v7, v5

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "PlanarConfiguration"

    const/16 v5, 0x11c

    invoke-direct {v9, v15, v5, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x11

    aput-object v9, v7, v5

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "ResolutionUnit"

    const/16 v5, 0x128

    invoke-direct {v9, v15, v5, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x12

    aput-object v9, v7, v5

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "TransferFunction"

    const/16 v5, 0x12d

    invoke-direct {v9, v15, v5, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x13

    aput-object v9, v7, v5

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "Software"

    const/16 v5, 0x131

    invoke-direct {v9, v15, v5, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x14

    aput-object v9, v7, v5

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "DateTime"

    const/16 v15, 0x132

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x15

    aput-object v5, v7, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "Artist"

    const/16 v15, 0x13b

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x16

    aput-object v5, v7, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "WhitePoint"

    const/16 v15, 0x13e

    invoke-direct {v5, v9, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x17

    aput-object v5, v7, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "PrimaryChromaticities"

    const/16 v3, 0x13f

    invoke-direct {v5, v15, v3, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v3, 0x18

    aput-object v5, v7, v3

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "SubIFDPointer"

    const/16 v15, 0x14a

    invoke-direct {v3, v5, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x19

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "JPEGInterchangeFormat"

    const/16 v15, 0x201

    invoke-direct {v3, v5, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x1a

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "JPEGInterchangeFormatLength"

    const/16 v15, 0x202

    invoke-direct {v3, v5, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x1b

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "YCbCrCoefficients"

    const/16 v15, 0x211

    invoke-direct {v3, v5, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x1c

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "YCbCrSubSampling"

    const/16 v15, 0x212

    invoke-direct {v3, v5, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x1d

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "YCbCrPositioning"

    const/16 v15, 0x213

    invoke-direct {v3, v5, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x1e

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "ReferenceBlackWhite"

    const/16 v15, 0x214

    invoke-direct {v3, v5, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x1f

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "Copyright"

    const v15, 0x8298

    invoke-direct {v3, v5, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x20

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "ExifIFDPointer"

    const v15, 0x8769

    invoke-direct {v3, v5, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x21

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "GPSInfoIFDPointer"

    const v15, 0x8825

    invoke-direct {v3, v5, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x22

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "SensorTopBorder"

    invoke-direct {v3, v5, v0, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x23

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "SensorLeftBorder"

    invoke-direct {v3, v5, v11, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x24

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "SensorBottomBorder"

    invoke-direct {v3, v5, v2, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x25

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "SensorRightBorder"

    invoke-direct {v3, v5, v13, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x26

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "ISO"

    invoke-direct {v3, v5, v9, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x27

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "JpgFromRaw"

    const/16 v15, 0x2e

    invoke-direct {v3, v5, v15, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x28

    aput-object v3, v7, v5

    new-instance v3, Landroid/media/ExifInterface$ExifTag;

    const-string v5, "Xmp"

    const/16 v15, 0x2bc

    invoke-direct {v3, v5, v15, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v5, 0x29

    aput-object v3, v7, v5

    sput-object v7, Landroid/media/ExifInterface;->IFD_TIFF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v3, 0x3e

    new-array v3, v3, [Landroid/media/ExifInterface$ExifTag;

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "ExposureTime"

    const v9, 0x829a

    invoke-direct {v5, v15, v9, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v8

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FNumber"

    const v15, 0x829d

    invoke-direct {v5, v9, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v6

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ExposureProgram"

    const v15, 0x8822

    invoke-direct {v5, v9, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v10

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SpectralSensitivity"

    const v15, 0x8824

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v1

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ISOSpeedRatings"

    const v15, 0x8827

    invoke-direct {v5, v9, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v0

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "OECF"

    const v15, 0x8828

    invoke-direct {v5, v9, v15, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v11

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ExifVersion"

    const v15, 0x9000

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v2

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "DateTimeOriginal"

    const v15, 0x9003

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v13

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "DateTimeDigitized"

    const v15, 0x9004

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v4

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "OffsetTime"

    const v15, 0x9010

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v5, v3, v14

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "OffsetTimeOriginal"

    const v15, 0x9011

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0xa

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "OffsetTimeDigitized"

    const v15, 0x9012

    invoke-direct {v5, v9, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0xb

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ComponentsConfiguration"

    const v15, 0x9101

    invoke-direct {v5, v9, v15, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0xc

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "CompressedBitsPerPixel"

    const v15, 0x9102

    invoke-direct {v5, v9, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0xd

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ShutterSpeedValue"

    const v15, 0x9201

    const/16 v14, 0xa

    invoke-direct {v5, v9, v15, v14, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0xe

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ApertureValue"

    const v15, 0x9202

    invoke-direct {v5, v9, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0xf

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "BrightnessValue"

    const v15, 0x9203

    invoke-direct {v5, v9, v15, v14, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x10

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ExposureBiasValue"

    const v15, 0x9204

    invoke-direct {v5, v9, v15, v14, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x11

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "MaxApertureValue"

    const v14, 0x9205

    invoke-direct {v5, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x12

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SubjectDistance"

    const v14, 0x9206

    invoke-direct {v5, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x13

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "MeteringMode"

    const v14, 0x9207

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x14

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "LightSource"

    const v14, 0x9208

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x15

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "Flash"

    const v14, 0x9209

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x16

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FocalLength"

    const v14, 0x920a

    invoke-direct {v5, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x17

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SubjectArea"

    const v14, 0x9214

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x18

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "MakerNote"

    const v14, 0x927c

    invoke-direct {v5, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x19

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "UserComment"

    const v14, 0x9286

    invoke-direct {v5, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x1a

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SubSecTime"

    const v14, 0x9290

    invoke-direct {v5, v9, v14, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x1b

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SubSecTimeOriginal"

    const v14, 0x9291

    invoke-direct {v5, v9, v14, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x1c

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SubSecTimeDigitized"

    const v14, 0x9292

    invoke-direct {v5, v9, v14, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x1d

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FlashpixVersion"

    const v14, 0xa000

    invoke-direct {v5, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x1e

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ColorSpace"

    const v14, 0xa001

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x1f

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v25, "PixelXDimension"

    const v26, 0xa002

    const/16 v27, 0x3

    const/16 v28, 0x4

    const/16 v29, 0x0

    move-object/from16 v24, v5

    invoke-direct/range {v24 .. v29}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x20

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v25, "PixelYDimension"

    const v26, 0xa003

    move-object/from16 v24, v5

    invoke-direct/range {v24 .. v29}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x21

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "RelatedSoundFile"

    const v14, 0xa004

    invoke-direct {v5, v9, v14, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x22

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "InteroperabilityIFDPointer"

    const v14, 0xa005

    invoke-direct {v5, v9, v14, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x23

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FlashEnergy"

    const v14, 0xa20b

    invoke-direct {v5, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x24

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SpatialFrequencyResponse"

    const v14, 0xa20c

    invoke-direct {v5, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x25

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FocalPlaneXResolution"

    const v14, 0xa20e

    invoke-direct {v5, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x26

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FocalPlaneYResolution"

    const v14, 0xa20f

    invoke-direct {v5, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x27

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FocalPlaneResolutionUnit"

    const v14, 0xa210

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x28

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SubjectLocation"

    const v14, 0xa214

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x29

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ExposureIndex"

    const v14, 0xa215

    invoke-direct {v5, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x2a

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SensingMethod"

    const v14, 0xa217

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x2b

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FileSource"

    const v14, 0xa300

    invoke-direct {v5, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x2c

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SceneType"

    const v14, 0xa301

    invoke-direct {v5, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x2d

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "CFAPattern"

    const v14, 0xa302

    invoke-direct {v5, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x2e

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "CustomRendered"

    const v14, 0xa401

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x2f

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ExposureMode"

    const v14, 0xa402

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x30

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "WhiteBalance"

    const v14, 0xa403

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x31

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "DigitalZoomRatio"

    const v14, 0xa404

    invoke-direct {v5, v9, v14, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x32

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "FocalLengthIn35mmFilm"

    const v14, 0xa405

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x33

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SceneCaptureType"

    const v14, 0xa406

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x34

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "GainControl"

    const v14, 0xa407

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x35

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "Contrast"

    const v14, 0xa408

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x36

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "Saturation"

    const v14, 0xa409

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x37

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "Sharpness"

    const v14, 0xa40a

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x38

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "DeviceSettingDescription"

    const v14, 0xa40b

    invoke-direct {v5, v9, v14, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x39

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "SubjectDistanceRange"

    const v14, 0xa40c

    invoke-direct {v5, v9, v14, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x3a

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "ImageUniqueID"

    const v14, 0xa420

    invoke-direct {v5, v9, v14, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x3b

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v9, "DNGVersion"

    const v14, 0xc612

    invoke-direct {v5, v9, v14, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x3c

    aput-object v5, v3, v9

    new-instance v5, Landroid/media/ExifInterface$ExifTag;

    const-string v25, "DefaultCropSize"

    const v26, 0xc620

    move-object/from16 v24, v5

    invoke-direct/range {v24 .. v29}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v9, 0x3d

    aput-object v5, v3, v9

    sput-object v3, Landroid/media/ExifInterface;->IFD_EXIF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v5, 0x1f

    new-array v5, v5, [Landroid/media/ExifInterface$ExifTag;

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSVersionID"

    invoke-direct {v9, v14, v8, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v8

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSLatitudeRef"

    invoke-direct {v9, v14, v6, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v6

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSLatitude"

    invoke-direct {v9, v14, v10, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v10

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSLongitudeRef"

    invoke-direct {v9, v14, v1, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v1

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSLongitude"

    invoke-direct {v9, v14, v0, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v0

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSAltitudeRef"

    invoke-direct {v9, v14, v11, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v11

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSAltitude"

    invoke-direct {v9, v14, v2, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v2

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSTimeStamp"

    invoke-direct {v9, v14, v13, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v13

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSSatellites"

    invoke-direct {v9, v14, v4, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v4

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSStatus"

    const/16 v15, 0x9

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSMeasureMode"

    const/16 v15, 0xa

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDOP"

    const/16 v15, 0xb

    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSSpeedRef"

    const/16 v15, 0xc

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSSpeed"

    const/16 v15, 0xd

    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSTrackRef"

    const/16 v15, 0xe

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSTrack"

    const/16 v15, 0xf

    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSImgDirectionRef"

    const/16 v15, 0x10

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSImgDirection"

    const/16 v15, 0x11

    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSMapDatum"

    const/16 v15, 0x12

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestLatitudeRef"

    const/16 v15, 0x13

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestLatitude"

    const/16 v15, 0x14

    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x14

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestLongitudeRef"

    const/16 v15, 0x15

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x15

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestLongitude"

    const/16 v15, 0x16

    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x16

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestBearingRef"

    const/16 v15, 0x17

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v9, v5, v15

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestBearing"

    const/16 v15, 0x18

    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x18

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestDistanceRef"

    const/16 v15, 0x19

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x19

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDestDistance"

    const/16 v15, 0x1a

    invoke-direct {v9, v14, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x1a

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSProcessingMethod"

    const/16 v15, 0x1b

    invoke-direct {v9, v14, v15, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x1b

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSAreaInformation"

    const/16 v15, 0x1c

    invoke-direct {v9, v14, v15, v13, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x1c

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDateStamp"

    const/16 v15, 0x1d

    invoke-direct {v9, v14, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x1d

    aput-object v9, v5, v14

    new-instance v9, Landroid/media/ExifInterface$ExifTag;

    const-string v14, "GPSDifferential"

    const/16 v15, 0x1e

    invoke-direct {v9, v14, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v14, 0x1e

    aput-object v9, v5, v14

    sput-object v5, Landroid/media/ExifInterface;->IFD_GPS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    new-array v9, v6, [Landroid/media/ExifInterface$ExifTag;

    new-instance v14, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "InteroperabilityIndex"

    invoke-direct {v14, v15, v6, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v14, v9, v8

    sput-object v9, Landroid/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v14, 0x26

    new-array v14, v14, [Landroid/media/ExifInterface$ExifTag;

    new-instance v15, Landroid/media/ExifInterface$ExifTag;

    const-string v4, "NewSubfileType"

    const/16 v13, 0xfe

    invoke-direct {v15, v4, v13, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v15, v14, v8

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "SubfileType"

    const/16 v15, 0xff

    invoke-direct {v4, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v4, v14, v6

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v27, "ThumbnailImageWidth"

    const/16 v28, 0x100

    const/16 v29, 0x3

    const/16 v30, 0x4

    const/16 v31, 0x0

    move-object/from16 v26, v4

    invoke-direct/range {v26 .. v31}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v4, v14, v10

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v33, "ThumbnailImageLength"

    const/16 v34, 0x101

    const/16 v35, 0x3

    const/16 v36, 0x4

    const/16 v37, 0x0

    move-object/from16 v32, v4

    invoke-direct/range {v32 .. v37}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v4, v14, v1

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "BitsPerSample"

    const/16 v15, 0x102

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v4, v14, v0

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "Compression"

    const/16 v15, 0x103

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v4, v14, v11

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "PhotometricInterpretation"

    const/16 v15, 0x106

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v4, v14, v2

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "ImageDescription"

    const/16 v15, 0x10e

    invoke-direct {v4, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/4 v13, 0x7

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "Make"

    const/16 v15, 0x10f

    invoke-direct {v4, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x8

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "Model"

    const/16 v15, 0x110

    invoke-direct {v4, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x9

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v27, "StripOffsets"

    const/16 v28, 0x111

    move-object/from16 v26, v4

    invoke-direct/range {v26 .. v31}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0xa

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "ThumbnailOrientation"

    const/16 v15, 0x112

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0xb

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "SamplesPerPixel"

    const/16 v15, 0x115

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0xc

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v27, "RowsPerStrip"

    const/16 v28, 0x116

    move-object/from16 v26, v4

    invoke-direct/range {v26 .. v31}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0xd

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v27, "StripByteCounts"

    const/16 v28, 0x117

    move-object/from16 v26, v4

    invoke-direct/range {v26 .. v31}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0xe

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "XResolution"

    const/16 v15, 0x11a

    invoke-direct {v4, v13, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0xf

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "YResolution"

    const/16 v15, 0x11b

    invoke-direct {v4, v13, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x10

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "PlanarConfiguration"

    const/16 v15, 0x11c

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x11

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "ResolutionUnit"

    const/16 v15, 0x128

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x12

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "TransferFunction"

    const/16 v15, 0x12d

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x13

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "Software"

    const/16 v15, 0x131

    invoke-direct {v4, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x14

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "DateTime"

    const/16 v15, 0x132

    invoke-direct {v4, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x15

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "Artist"

    const/16 v15, 0x13b

    invoke-direct {v4, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x16

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "WhitePoint"

    const/16 v15, 0x13e

    invoke-direct {v4, v13, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x17

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "PrimaryChromaticities"

    const/16 v15, 0x13f

    invoke-direct {v4, v13, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x18

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "SubIFDPointer"

    const/16 v15, 0x14a

    invoke-direct {v4, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x19

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "JPEGInterchangeFormat"

    const/16 v15, 0x201

    invoke-direct {v4, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x1a

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "JPEGInterchangeFormatLength"

    const/16 v15, 0x202

    invoke-direct {v4, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x1b

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "YCbCrCoefficients"

    const/16 v15, 0x211

    invoke-direct {v4, v13, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x1c

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "YCbCrSubSampling"

    const/16 v15, 0x212

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x1d

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "YCbCrPositioning"

    const/16 v15, 0x213

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x1e

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "ReferenceBlackWhite"

    const/16 v15, 0x214

    invoke-direct {v4, v13, v15, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x1f

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "Xmp"

    const/16 v15, 0x2bc

    invoke-direct {v4, v13, v15, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x20

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "Copyright"

    const v15, 0x8298

    invoke-direct {v4, v13, v15, v10, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x21

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "ExifIFDPointer"

    const v15, 0x8769

    invoke-direct {v4, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x22

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "GPSInfoIFDPointer"

    const v15, 0x8825

    invoke-direct {v4, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x23

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "DNGVersion"

    const v15, 0xc612

    invoke-direct {v4, v13, v15, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x24

    aput-object v4, v14, v13

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v18, "DefaultCropSize"

    const v19, 0xc620

    const/16 v20, 0x3

    const/16 v21, 0x4

    const/16 v22, 0x0

    move-object/from16 v17, v4

    invoke-direct/range {v17 .. v22}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag-IA;)V

    const/16 v13, 0x25

    aput-object v4, v14, v13

    sput-object v14, Landroid/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroid/media/ExifInterface$ExifTag;

    new-instance v4, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "StripOffsets"

    const/16 v15, 0x111

    invoke-direct {v4, v13, v15, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    sput-object v4, Landroid/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroid/media/ExifInterface$ExifTag;

    new-array v4, v1, [Landroid/media/ExifInterface$ExifTag;

    new-instance v13, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "ThumbnailImage"

    const/16 v2, 0x100

    const/4 v11, 0x7

    invoke-direct {v13, v15, v2, v11, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v13, v4, v8

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "CameraSettingsIFDPointer"

    const/16 v13, 0x2020

    invoke-direct {v2, v11, v13, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v2, v4, v6

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v11, "ImageProcessingIFDPointer"

    const/16 v13, 0x2040

    invoke-direct {v2, v11, v13, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v2, v4, v10

    sput-object v4, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_TAGS:[Landroid/media/ExifInterface$ExifTag;

    new-array v2, v10, [Landroid/media/ExifInterface$ExifTag;

    new-instance v11, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "PreviewImageStart"

    const/16 v15, 0x101

    invoke-direct {v11, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v11, v2, v8

    new-instance v11, Landroid/media/ExifInterface$ExifTag;

    const-string v13, "PreviewImageLength"

    const/16 v15, 0x102

    invoke-direct {v11, v13, v15, v0, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v11, v2, v6

    sput-object v2, Landroid/media/ExifInterface;->ORF_CAMERA_SETTINGS_TAGS:[Landroid/media/ExifInterface$ExifTag;

    new-array v11, v6, [Landroid/media/ExifInterface$ExifTag;

    new-instance v13, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "AspectFrame"

    const/16 v0, 0x1113

    invoke-direct {v13, v15, v0, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v13, v11, v8

    sput-object v11, Landroid/media/ExifInterface;->ORF_IMAGE_PROCESSING_TAGS:[Landroid/media/ExifInterface$ExifTag;

    new-array v0, v6, [Landroid/media/ExifInterface$ExifTag;

    new-instance v13, Landroid/media/ExifInterface$ExifTag;

    const-string v15, "ColorSpace"

    const/16 v10, 0x37

    invoke-direct {v13, v15, v10, v1, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v13, v0, v8

    sput-object v0, Landroid/media/ExifInterface;->PEF_TAGS:[Landroid/media/ExifInterface$ExifTag;

    const/16 v10, 0xa

    new-array v10, v10, [[Landroid/media/ExifInterface$ExifTag;

    aput-object v7, v10, v8

    aput-object v3, v10, v6

    const/4 v3, 0x2

    aput-object v5, v10, v3

    aput-object v9, v10, v1

    const/4 v3, 0x4

    aput-object v14, v10, v3

    const/4 v3, 0x5

    aput-object v7, v10, v3

    const/4 v3, 0x6

    aput-object v4, v10, v3

    const/4 v4, 0x7

    aput-object v2, v10, v4

    const/16 v2, 0x8

    aput-object v11, v10, v2

    const/16 v2, 0x9

    aput-object v0, v10, v2

    sput-object v10, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    new-array v0, v3, [Landroid/media/ExifInterface$ExifTag;

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v3, "SubIFDPointer"

    const/16 v4, 0x14a

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v2, v0, v8

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v3, "ExifIFDPointer"

    const v4, 0x8769

    invoke-direct {v2, v3, v4, v5, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v2, v0, v6

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v3, "GPSInfoIFDPointer"

    const v4, 0x8825

    invoke-direct {v2, v3, v4, v5, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v3, "InteroperabilityIFDPointer"

    const v4, 0xa005

    invoke-direct {v2, v3, v4, v5, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v2, v0, v1

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v3, "CameraSettingsIFDPointer"

    const/16 v4, 0x2020

    invoke-direct {v2, v3, v4, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    aput-object v2, v0, v5

    new-instance v2, Landroid/media/ExifInterface$ExifTag;

    const-string v3, "ImageProcessingIFDPointer"

    const/16 v4, 0x2040

    invoke-direct {v2, v3, v4, v6, v12}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag-IA;)V

    const/4 v3, 0x5

    aput-object v2, v0, v3

    sput-object v0, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    array-length v0, v10

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    array-length v0, v10

    new-array v0, v0, [Ljava/util/HashMap;

    sput-object v0, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    const-string v2, "FNumber"

    const-string v3, "DigitalZoomRatio"

    const-string v4, "ExposureTime"

    const-string v5, "SubjectDistance"

    const-string v7, "GPSTimeStamp"

    filled-new-array {v2, v3, v4, v5, v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    const-string v2, "Exif\u0000\u0000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    sput-object v2, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    const-string v2, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "yyyy:MM:dd HH:mm:ss XXX"

    invoke-direct {v0, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Landroid/media/ExifInterface;->sFormatterTz:Ljava/text/SimpleDateFormat;

    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v0, 0x0

    :goto_b43
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v3, v2

    if-ge v0, v3, :cond_b7e

    sget-object v3, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    aput-object v4, v3, v0

    sget-object v3, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    aput-object v4, v3, v0

    aget-object v2, v2, v0

    array-length v3, v2

    move v4, v8

    :goto_b5e
    if-ge v4, v3, :cond_b7b

    aget-object v5, v2, v4

    sget-object v7, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v7, v7, v0

    iget v9, v5, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v7, v7, v0

    iget-object v9, v5, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v7, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_b5e

    :cond_b7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_b43

    :cond_b7e
    sget-object v0, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v2, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v3, v2, v8

    iget v3, v3, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v3, v2, v6

    iget v3, v3, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    aget-object v4, v2, v3

    iget v4, v4, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v3, v2, v1

    iget v3, v3, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    aget-object v1, v2, v1

    iget v1, v1, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    aget-object v1, v2, v1

    iget v1, v1, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ".*[1-9].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    nop

    const-string v0, "^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    return-void

    nop

    :array_bf6
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_bfc
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    :array_c02
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    :array_c08
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    :array_c0e
    .array-data 1
        0x61t
        0x76t
        0x69t
        0x66t
    .end array-data

    :array_c14
    .array-data 1
        0x61t
        0x76t
        0x69t
        0x73t
    .end array-data

    :array_c1a
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    nop

    :array_c22
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    nop

    :array_c2c
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_c34
    .array-data 1
        0x65t
        0x58t
        0x49t
        0x66t
    .end array-data

    :array_c3a
    .array-data 1
        0x49t
        0x48t
        0x44t
        0x52t
    .end array-data

    :array_c40
    .array-data 1
        0x49t
        0x45t
        0x4et
        0x44t
    .end array-data

    :array_c46
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    :array_c4c
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x50t
    .end array-data

    :array_c52
    .array-data 1
        0x45t
        0x58t
        0x49t
        0x46t
    .end array-data

    :array_c58
    .array-data 1
        -0x63t
        0x1t
        0x2at
    .end array-data

    :array_c5e
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_c7e
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_c86
    .array-data 4
        0x8
        0x8
        0x8
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->initForFilename(Ljava/lang/String;)V

    return-void

    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_6b

    invoke-static {p1}, Landroid/os/FileUtils;->convertToModernFd(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    :cond_22
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v1, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_3f

    if-nez v0, :cond_3f

    iput-object p1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    :try_start_32
    invoke-static {p1}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_36
    .catch Landroid/system/ErrnoException; {:try_start_32 .. :try_end_36} :catch_39

    move-object p1, v1

    const/4 v2, 0x1

    goto :goto_41

    :catch_39
    move-exception v1

    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v3

    throw v3

    :cond_3f
    iput-object v1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    :goto_41
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    const/4 v1, 0x0

    :try_start_45
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v3

    invoke-direct {p0, v1, p1}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;Ljava/io/FileDescriptor;)V
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_5c

    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v2, :cond_56

    invoke-static {p1}, Landroid/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    :cond_56
    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_5b
    return-void

    :catchall_5c
    move-exception v3

    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v2, :cond_65

    invoke-static {p1}, Landroid/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    :cond_65
    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_6a
    throw v3

    :cond_6b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "fileDescriptor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_6f

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz p2, :cond_3e

    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1388

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v1

    move-object v1, p1

    check-cast v1, Ljava/io/BufferedInputStream;

    invoke-static {v1}, Landroid/media/ExifInterface;->isExifDataOnly(Ljava/io/BufferedInputStream;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v0, "ExifInterface"

    const-string v1, "Given data does not follow the structure of an Exif-only data."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_36
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/ExifInterface;->mIsExifDataOnly:Z

    iput-object v0, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_6b

    :cond_3e
    instance-of v1, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v1, :cond_4a

    move-object v1, p1

    check-cast v1, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v1, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_6b

    :cond_4a
    instance-of v1, p1, Ljava/io/FileInputStream;

    if-eqz v1, :cond_67

    move-object v1, p1

    check-cast v1, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_67

    iput-object v0, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    move-object v1, p1

    check-cast v1, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_6b

    :cond_67
    iput-object v0, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    :goto_6b
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;Ljava/io/FileDescriptor;)V

    return-void

    :cond_6f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inputStream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v0

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashSet;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_1c

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->initForFilename(Ljava/lang/String;)V

    return-void

    :cond_1c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "filename cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addDefaultValuesForCompatibility()V
    .registers 8

    const-string v0, "DateTimeOriginal"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    const-string v2, "DateTime"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1c

    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    invoke-static {v0}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    const-string v2, "ImageWidth"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_33

    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v4, v5, v6}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    const-string v2, "ImageLength"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_48

    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v4, v5, v6}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_48
    const-string v2, "Orientation"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5d

    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v1

    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v1, v6}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5d
    const-string v1, "LightSource"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_73

    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v4, v5, v3}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_73
    return-void
.end method

.method public static convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F
    .registers 15

    const-string v0, "/"

    :try_start_2
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 v6, 0x1

    aget-object v7, v3, v6

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    div-double/2addr v4, v7

    aget-object v7, v1, v6

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    aget-object v7, v3, v2

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    aget-object v9, v3, v6

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    div-double/2addr v7, v9

    const/4 v9, 0x2

    aget-object v9, v1, v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    aget-object v6, v0, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    div-double/2addr v2, v9

    const-wide/high16 v9, 0x404e000000000000L  # 60.0

    div-double v9, v7, v9

    add-double/2addr v9, v4

    const-wide v11, 0x40ac200000000000L  # 3600.0

    div-double v11, v2, v11

    add-double/2addr v9, v11

    const-string v6, "S"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7d

    const-string v6, "W"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_78
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_78} :catch_80
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_78} :catch_80

    if-eqz v6, :cond_7b

    goto :goto_7d

    :cond_7b
    double-to-float v6, v9

    return v6

    :cond_7d
    :goto_7d
    neg-double v11, v9

    double-to-float v6, v11

    return v6

    :catch_80
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private copyChunksUpToGivenChunkType(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Landroid/media/ExifInterface$ByteOrderedDataOutputStream;[B[B)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v1

    array-length v2, v0

    if-eq v1, v2, :cond_4b

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered invalid length while copying WebP chunks up tochunk type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    sget-object v4, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, p3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p4, :cond_27

    const-string v3, ""

    goto :goto_3f

    :cond_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " or "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p4, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4b
    invoke-direct {p0, p1, p2, v0}, Landroid/media/ExifInterface;->copyWebPChunk(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Landroid/media/ExifInterface$ByteOrderedDataOutputStream;[B)V

    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_5e

    if-eqz p4, :cond_5d

    invoke-static {v0, p4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_5d

    goto :goto_5e

    :cond_5d
    goto :goto_0

    :cond_5e
    :goto_5e
    return-void
.end method

.method private copyWebPChunk(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Landroid/media/ExifInterface$ByteOrderedDataOutputStream;[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p2, p3}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    invoke-virtual {p2, v0}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    add-int/lit8 v1, v0, 0x1

    goto :goto_13

    :cond_12
    move v1, v0

    :goto_13
    invoke-static {p1, p2, v1}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    return-void
.end method

.method private getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 5

    if-eqz p1, :cond_1b

    const/4 v0, 0x0

    :goto_3
    sget-object v1, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    move-object v2, v1

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    return-object v2

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_19
    const/4 v0, 0x0

    return-object v0

    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getHeifAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/io/FileDescriptor;)V
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "Xmp"

    const-string v4, "yes"

    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    if-eqz v3, :cond_15

    :try_start_11
    invoke-virtual {v5, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_1d

    :cond_15
    new-instance v6, Landroid/media/ExifInterface$1;

    invoke-direct {v6, v1, v2}, Landroid/media/ExifInterface$1;-><init>(Landroid/media/ExifInterface;Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    invoke-virtual {v5, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V

    :goto_1d
    const/16 v6, 0x21

    invoke-virtual {v5, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x22

    invoke-virtual {v5, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1a

    invoke-virtual {v5, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x11

    invoke-virtual {v5, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v13, v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_55

    const/16 v4, 0x1d

    invoke-virtual {v5, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    const/16 v4, 0x1e

    invoke-virtual {v5, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    const/16 v4, 0x1f

    invoke-virtual {v5, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    goto :goto_70

    :cond_55
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    const/16 v4, 0x12

    invoke-virtual {v5, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    const/16 v4, 0x13

    invoke-virtual {v5, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    const/16 v4, 0x18

    invoke-virtual {v5, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    :cond_70
    :goto_70
    const/4 v4, 0x0

    if-eqz v10, :cond_86

    iget-object v14, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v14, v14, v4

    const-string v15, "ImageWidth"

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v3, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v4, v3}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v3

    invoke-virtual {v14, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_86
    if-eqz v11, :cond_9c

    iget-object v3, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, "ImageLength"

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iget-object v15, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v14, v15}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v14

    invoke-virtual {v3, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9c
    if-eqz v12, :cond_be

    const/4 v3, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sparse-switch v4, :sswitch_data_1bc

    goto :goto_ae

    :sswitch_a7
    const/16 v3, 0x8

    goto :goto_ae

    :sswitch_aa
    const/4 v3, 0x3

    goto :goto_ae

    :sswitch_ac
    const/4 v3, 0x6

    nop

    :goto_ae
    iget-object v4, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v14, 0x0

    aget-object v4, v4, v14

    const-string v14, "Orientation"

    iget-object v15, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v3, v15}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_be
    if-eqz v6, :cond_119

    if-eqz v7, :cond_119

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v14, 0x6

    if-le v4, v14, :cond_10f

    int-to-long v14, v3

    invoke-virtual {v2, v14, v15}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    const/4 v14, 0x6

    new-array v15, v14, [B

    invoke-virtual {v2, v15}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v14

    move-object/from16 v18, v6

    const/4 v6, 0x6

    if-ne v14, v6, :cond_107

    add-int/2addr v3, v6

    add-int/lit8 v4, v4, -0x6

    sget-object v6, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v15, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_ff

    new-array v6, v4, [B

    invoke-virtual {v2, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v14

    if-ne v14, v4, :cond_f7

    iput v3, v1, Landroid/media/ExifInterface;->mExifOffset:I

    const/4 v14, 0x0

    invoke-direct {v1, v6, v14}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    goto :goto_11b

    :cond_f7
    new-instance v0, Ljava/io/IOException;

    const-string v14, "Can\'t read exif"

    invoke-direct {v0, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ff
    new-instance v0, Ljava/io/IOException;

    const-string v6, "Invalid identifier"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_107
    new-instance v0, Ljava/io/IOException;

    const-string v6, "Can\'t read identifier"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10f
    move-object/from16 v18, v6

    new-instance v0, Ljava/io/IOException;

    const-string v6, "Invalid exif length"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_119
    move-object/from16 v18, v6

    :goto_11b
    const/16 v3, 0x29

    invoke-virtual {v5, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2a

    invoke-virtual {v5, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_17a

    if-eqz v4, :cond_17a

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object v15, v3

    move-object/from16 v17, v4

    int-to-long v3, v6

    invoke-virtual {v2, v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    new-array v3, v14, [B

    invoke-virtual {v2, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v4

    if-ne v4, v14, :cond_16e

    invoke-virtual {v1, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_169

    iget-object v4, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v16, 0x0

    aget-object v4, v4, v16

    new-instance v1, Landroid/media/ExifInterface$ExifAttribute;

    const/16 v20, 0x1

    array-length v2, v3

    move-object/from16 v16, v7

    move-object/from16 v26, v8

    int-to-long v7, v6

    const/16 v25, 0x0

    move-object/from16 v19, v1

    move/from16 v21, v2

    move-wide/from16 v22, v7

    move-object/from16 v24, v3

    invoke-direct/range {v19 .. v25}, Landroid/media/ExifInterface$ExifAttribute;-><init>(IIJ[BLandroid/media/ExifInterface$ExifAttribute-IA;)V

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_181

    :cond_169
    move-object/from16 v16, v7

    move-object/from16 v26, v8

    goto :goto_181

    :cond_16e
    move-object/from16 v16, v7

    move-object/from16 v26, v8

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to read XMP from HEIF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17a
    move-object v15, v3

    move-object/from16 v17, v4

    move-object/from16 v16, v7

    move-object/from16 v26, v8

    :goto_181
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_1b1

    const-string v0, "ExifInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Heif meta: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rotation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b1
    .catchall {:try_start_11 .. :try_end_1b1} :catchall_1b6

    :cond_1b1
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    nop

    return-void

    :catchall_1b6
    move-exception v0

    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v0

    nop

    :sswitch_data_1bc
    .sparse-switch
        0x5a -> :sswitch_ac
        0xb4 -> :sswitch_aa
        0x10e -> :sswitch_a7
    .end sparse-switch
.end method

.method private getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    sget-boolean v3, Landroid/media/ExifInterface;->DEBUG:Z

    const-string v4, "ExifInterface"

    if-eqz v3, :cond_22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getJpegAttributes starting with: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    move/from16 v3, p2

    int-to-long v5, v3

    invoke-virtual {v1, v5, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    move/from16 v5, p2

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v6

    move v7, v6

    const-string v8, "Invalid marker: "

    const/4 v9, -0x1

    if-ne v6, v9, :cond_203

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v10

    const/16 v11, -0x28

    if-ne v10, v11, :cond_1e6

    add-int/2addr v5, v6

    :goto_44
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v7

    if-ne v7, v9, :cond_1c7

    add-int/lit8 v5, v5, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v7

    sget-boolean v8, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v8, :cond_70

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found JPEG segment indicator: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    and-int/lit16 v11, v7, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    add-int/2addr v5, v6

    const/16 v10, -0x27

    if-eq v7, v10, :cond_1c1

    const/16 v10, -0x26

    if-ne v7, v10, :cond_7b

    goto/16 :goto_1c1

    :cond_7b
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    add-int/lit8 v5, v5, 0x2

    if-eqz v8, :cond_b3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "JPEG segment: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    and-int/lit16 v11, v7, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " (length: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v11, v10, 0x2

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ")"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b3
    const-string v8, "Invalid length"

    if-ltz v10, :cond_1bb

    sparse-switch v7, :sswitch_data_220

    move-object/from16 v23, v4

    move v3, v6

    goto/16 :goto_19c

    :sswitch_bf
    new-array v11, v10, [B

    invoke-virtual {v1, v11}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v12

    if-ne v12, v10, :cond_e7

    const/4 v10, 0x0

    const-string v12, "UserComment"

    invoke-virtual {v0, v12}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_e2

    iget-object v13, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v13, v13, v6

    new-instance v14, Ljava/lang/String;

    sget-object v15, Landroid/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v14, v11, v15}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v14}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v14

    invoke-virtual {v13, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e2
    move-object/from16 v23, v4

    move v3, v6

    goto/16 :goto_19c

    :cond_e7
    new-instance v4, Ljava/io/IOException;

    const-string v6, "Invalid exif"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :sswitch_ef
    move v11, v5

    new-array v12, v10, [B

    invoke-virtual {v1, v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    add-int/2addr v5, v10

    const/4 v10, 0x0

    sget-object v13, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v12, v13}, Landroid/media/ExifInterfaceUtils;->startsWith([B[B)Z

    move-result v14

    if-eqz v14, :cond_113

    array-length v14, v13

    add-int/2addr v14, v11

    int-to-long v14, v14

    array-length v13, v13

    array-length v9, v12

    invoke-static {v12, v13, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    long-to-int v13, v14

    iput v13, v0, Landroid/media/ExifInterface;->mExifOffset:I

    invoke-direct {v0, v9, v2}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    move-object/from16 v23, v4

    move v3, v6

    goto/16 :goto_19c

    :cond_113
    sget-object v9, Landroid/media/ExifInterface;->IDENTIFIER_XMP_APP1:[B

    invoke-static {v12, v9}, Landroid/media/ExifInterfaceUtils;->startsWith([B[B)Z

    move-result v13

    if-eqz v13, :cond_151

    array-length v13, v9

    add-int/2addr v13, v11

    int-to-long v13, v13

    array-length v9, v9

    array-length v15, v12

    invoke-static {v12, v9, v15}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    const-string v15, "Xmp"

    invoke-virtual {v0, v15}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_14d

    iget-object v6, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v16, 0x0

    aget-object v6, v6, v16

    new-instance v3, Landroid/media/ExifInterface$ExifAttribute;

    const/16 v17, 0x1

    move-object/from16 v23, v4

    array-length v4, v9

    const/16 v22, 0x0

    move-object/from16 v16, v3

    move/from16 v18, v4

    move-wide/from16 v19, v13

    move-object/from16 v21, v9

    invoke-direct/range {v16 .. v22}, Landroid/media/ExifInterface$ExifAttribute;-><init>(IIJ[BLandroid/media/ExifInterface$ExifAttribute-IA;)V

    invoke-virtual {v6, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/media/ExifInterface;->mXmpIsFromSeparateMarker:Z

    goto :goto_150

    :cond_14d
    move-object/from16 v23, v4

    move v3, v6

    :goto_150
    goto :goto_19c

    :cond_151
    move-object/from16 v23, v4

    move v3, v6

    goto :goto_19c

    :sswitch_155
    move-object/from16 v23, v4

    move v3, v6

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v4

    if-ne v4, v3, :cond_194

    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v2

    const/4 v6, 0x4

    if-eq v2, v6, :cond_168

    const-string v9, "ImageLength"

    goto :goto_16a

    :cond_168
    const-string v9, "ThumbnailImageLength"

    :goto_16a
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v11

    int-to-long v11, v11

    iget-object v13, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v11, v12, v13}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v11

    invoke-virtual {v4, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v2

    if-eq v2, v6, :cond_181

    const-string v6, "ImageWidth"

    goto :goto_183

    :cond_181
    const-string v6, "ThumbnailImageWidth"

    :goto_183
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v9

    int-to-long v11, v9

    iget-object v9, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v11, v12, v9}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    invoke-virtual {v4, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, -0x5

    goto :goto_19c

    :cond_194
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid SOFx"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :goto_19c
    if-ltz v10, :cond_1b5

    invoke-virtual {v1, v10}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v4

    if-ne v4, v10, :cond_1ad

    add-int/2addr v5, v10

    move v6, v3

    move-object/from16 v4, v23

    const/4 v9, -0x1

    move/from16 v3, p2

    goto/16 :goto_44

    :cond_1ad
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid JPEG segment"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1b5
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1bb
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1c1
    :goto_1c1
    iget-object v3, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void

    :cond_1c7
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid marker:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v6, v7, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1e6
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v6, v7, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_203
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v6, v7, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_data_220
    .sparse-switch
        -0x40 -> :sswitch_155
        -0x3f -> :sswitch_155
        -0x3e -> :sswitch_155
        -0x3d -> :sswitch_155
        -0x3b -> :sswitch_155
        -0x3a -> :sswitch_155
        -0x39 -> :sswitch_155
        -0x37 -> :sswitch_155
        -0x36 -> :sswitch_155
        -0x35 -> :sswitch_155
        -0x33 -> :sswitch_155
        -0x32 -> :sswitch_155
        -0x31 -> :sswitch_155
        -0x1f -> :sswitch_ef
        -0x2 -> :sswitch_bf
    .end sparse-switch
.end method

.method private getMimeType(Ljava/io/BufferedInputStream;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1388

    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->reset()V

    invoke-static {v0}, Landroid/media/ExifInterface;->isJpegFormat([B)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x4

    return v1

    :cond_15
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isRafFormat([B)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/16 v1, 0x9

    return v1

    :cond_1e
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isHeifFormat([B)Z

    move-result v1

    if-eqz v1, :cond_27

    const/16 v1, 0xc

    return v1

    :cond_27
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isOrfFormat([B)Z

    move-result v1

    if-eqz v1, :cond_2f

    const/4 v1, 0x7

    return v1

    :cond_2f
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isRw2Format([B)Z

    move-result v1

    if-eqz v1, :cond_38

    const/16 v1, 0xa

    return v1

    :cond_38
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isPngFormat([B)Z

    move-result v1

    if-eqz v1, :cond_41

    const/16 v1, 0xd

    return v1

    :cond_41
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isWebpFormat([B)Z

    move-result v1

    if-eqz v1, :cond_4a

    const/16 v1, 0xe

    return v1

    :cond_4a
    const/4 v1, 0x0

    return v1
.end method

.method private getOrfAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Landroid/media/ExifInterface;->getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    iget-object v1, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v3, "MakerNote"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v1, :cond_db

    new-instance v3, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v4, v1, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    iget-object v4, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    sget-object v4, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    array-length v5, v4

    new-array v5, v5, [B

    invoke-virtual {v3, v5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    sget-object v6, Landroid/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    array-length v7, v6

    new-array v7, v7, [B

    invoke-virtual {v3, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_41

    const-wide/16 v8, 0x8

    invoke-virtual {v3, v8, v9}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto :goto_4c

    :cond_41
    invoke-static {v7, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_4c

    const-wide/16 v8, 0xc

    invoke-virtual {v3, v8, v9}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    :cond_4c
    :goto_4c
    const/4 v4, 0x6

    invoke-direct {v0, v3, v4}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v6, 0x7

    aget-object v4, v4, v6

    const-string v8, "PreviewImageStart"

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v8, v6

    const-string v8, "PreviewImageLength"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v4, :cond_80

    if-eqz v6, :cond_80

    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v9, 0x5

    aget-object v8, v8, v9

    const-string v10, "JPEGInterchangeFormat"

    invoke-virtual {v8, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v9

    const-string v9, "JPEGInterchangeFormatLength"

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_80
    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v9, 0x8

    aget-object v8, v8, v9

    const-string v9, "AspectFrame"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v8, :cond_db

    const/4 v9, 0x4

    new-array v9, v9, [I

    iget-object v10, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v8, v10}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v10

    move-object v9, v10

    check-cast v9, [I

    const/4 v10, 0x2

    aget v11, v9, v10

    const/4 v12, 0x0

    aget v13, v9, v12

    if-le v11, v13, :cond_db

    const/4 v11, 0x3

    aget v13, v9, v11

    aget v14, v9, v2

    if-le v13, v14, :cond_db

    aget v10, v9, v10

    aget v13, v9, v12

    sub-int/2addr v10, v13

    add-int/2addr v10, v2

    aget v11, v9, v11

    aget v13, v9, v2

    sub-int/2addr v11, v13

    add-int/2addr v11, v2

    if-ge v10, v11, :cond_bd

    add-int/2addr v10, v11

    sub-int v11, v10, v11

    sub-int/2addr v10, v11

    :cond_bd
    iget-object v2, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v10, v2}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v2

    iget-object v13, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v11, v13}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v13

    iget-object v14, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v14, v14, v12

    const-string v15, "ImageWidth"

    invoke-virtual {v14, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v14, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v12, v14, v12

    const-string v14, "ImageLength"

    invoke-virtual {v12, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_db
    return-void
.end method

.method private getPngAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPngAttributes starting with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    const/4 v0, 0x0

    sget-object v1, Landroid/media/ExifInterface;->PNG_SIGNATURE:[B

    array-length v2, v1

    invoke-virtual {p1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    array-length v1, v1

    add-int/2addr v0, v1

    :goto_2a
    :try_start_2a
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v1

    add-int/lit8 v0, v0, 0x4

    const/4 v2, 0x4

    new-array v2, v2, [B

    invoke-virtual {p1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v3

    array-length v4, v2

    if-ne v3, v4, :cond_da

    add-int/lit8 v0, v0, 0x4

    const/16 v3, 0x10

    if-ne v0, v3, :cond_51

    sget-object v3, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_IHDR:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_49

    goto :goto_51

    :cond_49
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Encountered invalid PNG file--IHDR chunk should appearas the first chunk"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_51
    :goto_51
    sget-object v3, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_IEND:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_5a

    goto :goto_8a

    :cond_5a
    sget-object v3, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_EXIF:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_d0

    new-array v3, v1, [B

    invoke-virtual {p1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v4

    if-ne v4, v1, :cond_b3

    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v4

    new-instance v5, Ljava/util/zip/CRC32;

    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v5, v2}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v5, v3}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    long-to-int v6, v6

    if-ne v6, v4, :cond_8c

    iput v0, p0, Landroid/media/ExifInterface;->mExifOffset:I

    const/4 v6, 0x0

    invoke-direct {p0, v3, v6}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    invoke-direct {p0}, Landroid/media/ExifInterface;->validateImages()V

    nop

    :goto_8a
    nop

    return-void

    :cond_8c
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", calculated CRC value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_b3
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read given length for given PNG chunk type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Landroid/media/ExifInterfaceUtils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_d0
    add-int/lit8 v3, v1, 0x4

    invoke-virtual {p1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    add-int/lit8 v3, v1, 0x4

    add-int/2addr v0, v3

    goto/16 :goto_2a

    :cond_da
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Encountered invalid length while parsing PNG chunktype"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_e2
    .catch Ljava/io/EOFException; {:try_start_2a .. :try_end_e2} :catch_e2

    :catch_e2
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Encountered corrupt PNG file."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getRafAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    const/4 v2, 0x4

    new-array v3, v2, [B

    new-array v4, v2, [B

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    const/4 v6, 0x5

    invoke-direct {v0, v1, v2, v6}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    int-to-long v6, v5

    invoke-virtual {v1, v6, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    sget-boolean v7, Landroid/media/ExifInterface;->DEBUG:Z

    const-string v8, "ExifInterface"

    if-eqz v7, :cond_54

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "numberOfDirectoryEntry: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    const/4 v7, 0x0

    :goto_55
    if-ge v7, v6, :cond_bc

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v10

    sget-object v11, Landroid/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroid/media/ExifInterface$ExifTag;

    iget v11, v11, Landroid/media/ExifInterface$ExifTag;->number:I

    if-ne v9, v11, :cond_b4

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v12

    iget-object v13, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v11, v13}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v13

    iget-object v14, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v12, v14}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v14

    iget-object v15, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    move/from16 v17, v2

    const-string v2, "ImageLength"

    invoke-virtual {v15, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v16

    const-string v15, "ImageWidth"

    invoke-virtual {v2, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v2, :cond_b3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Updated to length: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, ", width: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b3
    return-void

    :cond_b4
    move/from16 v17, v2

    invoke-virtual {v1, v10}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    add-int/lit8 v7, v7, 0x1

    goto :goto_55

    :cond_bc
    return-void
.end method

.method private getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->parseTiffHeaders(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    invoke-direct {p0}, Landroid/media/ExifInterface;->validateImages()V

    iget v0, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_59

    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v2, "MakerNote"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_59

    new-instance v2, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v2, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    const-wide/16 v3, 0x6

    invoke-virtual {v2, v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    const/16 v3, 0x9

    invoke-direct {p0, v2, v3}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    iget-object v4, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v4, v3

    const-string v4, "ColorSpace"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v3, :cond_59

    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v5, v1

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_59
    return-void
.end method

.method private getRw2Attributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v2, "JpgFromRaw"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_18

    iget v2, p0, Landroid/media/ExifInterface;->mRw2JpgFromRawOffset:I

    const/4 v3, 0x5

    invoke-direct {p0, p1, v2, v3}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    :cond_18
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    const-string v2, "ISO"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const-string v4, "ISOSpeedRatings"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v1, :cond_3c

    if-nez v2, :cond_3c

    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v5, v3

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    return-void
.end method

.method private getStandaloneAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    array-length v0, v0

    iput v0, p0, Landroid/media/ExifInterface;->mExifOffset:I

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    return-void
.end method

.method private getWebpAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWebpAttributes starting with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    sget-object v0, Landroid/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    sget-object v2, Landroid/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v2

    add-int/2addr v1, v2

    :goto_37
    const/4 v2, 0x4

    :try_start_38
    new-array v2, v2, [B

    invoke-virtual {p1, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v3

    array-length v4, v2

    if-ne v3, v4, :cond_aa

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v3

    add-int/lit8 v1, v1, 0x4

    sget-object v4, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_7f

    new-array v4, v3, [B

    invoke-virtual {p1, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v5

    if-ne v5, v3, :cond_62

    iput v1, p0, Landroid/media/ExifInterface;->mExifOffset:I

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Landroid/media/ExifInterface;->readExifSegment([BI)V

    iput v1, p0, Landroid/media/ExifInterface;->mExifOffset:I

    goto :goto_8e

    :cond_62
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read given length for given PNG chunk type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Landroid/media/ExifInterfaceUtils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_7f
    rem-int/lit8 v4, v3, 0x2
    :try_end_81
    .catch Ljava/io/EOFException; {:try_start_38 .. :try_end_81} :catch_b2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_87

    add-int/lit8 v4, v3, 0x1

    goto :goto_88

    :cond_87
    move v4, v3

    :goto_88
    move v3, v4

    add-int v4, v1, v3

    if-ne v4, v0, :cond_90

    nop

    :goto_8e
    nop

    return-void

    :cond_90
    add-int v4, v1, v3

    const-string v5, "Encountered WebP file with invalid chunk size"

    if-gt v4, v0, :cond_a4

    :try_start_96
    invoke-virtual {p1, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v4

    if-ne v4, v3, :cond_9e

    add-int/2addr v1, v4

    goto :goto_37

    :cond_9e
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_a4
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_aa
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Encountered invalid length while parsing WebP chunktype"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_b2
    .catch Ljava/io/EOFException; {:try_start_96 .. :try_end_b2} :catch_b2

    :catch_b2
    move-exception v2

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Encountered corrupt WebP file."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v1, :cond_8d

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v2

    invoke-static {v1}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_28

    return-object v1

    :cond_28
    const/4 v2, 0x1

    :goto_29
    array-length v3, v0

    if-ge v2, v3, :cond_8c

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    const/4 v7, -0x1

    const/4 v8, -0x1

    iget-object v9, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eq v9, v10, :cond_40

    iget-object v9, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v9, v10, :cond_48

    :cond_40
    iget-object v9, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :cond_48
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v5, :cond_66

    iget-object v9, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v10, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eq v9, v10, :cond_5e

    iget-object v9, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v10, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v9, v10, :cond_66

    :cond_5e
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :cond_66
    if-ne v7, v5, :cond_70

    if-ne v8, v5, :cond_70

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :cond_70
    if-ne v7, v5, :cond_7d

    new-instance v9, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v9

    goto :goto_89

    :cond_7d
    if-ne v8, v5, :cond_89

    new-instance v9, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v9

    :cond_89
    :goto_89
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_8c
    return-object v1

    :cond_8d
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v7, 0x0

    if-eqz v1, :cond_ee

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ne v1, v3, :cond_e8

    :try_start_9e
    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-long v1, v1

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    double-to-long v9, v9

    cmp-long v3, v1, v7

    const/16 v5, 0xa

    if-ltz v3, :cond_dd

    cmp-long v3, v9, v7

    if-gez v3, :cond_b8

    goto :goto_dd

    :cond_b8
    const-wide/32 v7, 0x7fffffff

    cmp-long v3, v1, v7

    const/4 v11, 0x5

    if-gtz v3, :cond_d3

    cmp-long v3, v9, v7

    if-lez v3, :cond_c5

    goto :goto_d3

    :cond_c5
    new-instance v3, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_d3
    :goto_d3
    new-instance v3, Landroid/util/Pair;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_dd
    :goto_dd
    new-instance v3, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e6
    .catch Ljava/lang/NumberFormatException; {:try_start_9e .. :try_end_e6} :catch_e7

    return-object v3

    :catch_e7
    move-exception v1

    :cond_e8
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_ee
    :try_start_ee
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v7

    const/4 v2, 0x4

    if-ltz v1, :cond_119

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/32 v11, 0xffff

    cmp-long v1, v9, v11

    if-gtz v1, :cond_119

    new-instance v1, Landroid/util/Pair;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_119
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v1, v9, v7

    if-gez v1, :cond_12d

    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_12d
    new-instance v1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_136
    .catch Ljava/lang/NumberFormatException; {:try_start_ee .. :try_end_136} :catch_137

    return-object v1

    :catch_137
    move-exception v0

    :try_start_138
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_146
    .catch Ljava/lang/NumberFormatException; {:try_start_138 .. :try_end_146} :catch_147

    return-object v0

    :catch_147
    move-exception v0

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private handleThumbnailFromJfif(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    nop

    const-string v0, "JPEGInterchangeFormat"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    nop

    const-string v1, "JPEGInterchangeFormatLength"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_81

    if-eqz v1, :cond_81

    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    iget v4, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_2a

    iget v4, p0, Landroid/media/ExifInterface;->mOrfMakerNoteOffset:I

    add-int/2addr v2, v4

    :cond_2a
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->getLength()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lez v2, :cond_5b

    if-lez v3, :cond_5b

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    iget v4, p0, Landroid/media/ExifInterface;->mExifOffset:I

    add-int/2addr v4, v2

    iput v4, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    iput v3, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    const/4 v5, 0x6

    iput v5, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    iget-object v5, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-nez v5, :cond_5b

    iget-object v5, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-nez v5, :cond_5b

    iget-object v5, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v5, :cond_5b

    new-array v5, v3, [B

    int-to-long v6, v4

    invoke-virtual {p1, v6, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    invoke-virtual {p1, v5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    iput-object v5, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    :cond_5b
    sget-boolean v4, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v4, :cond_81

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting thumbnail attributes with offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ExifInterface"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    return-void
.end method

.method private handleThumbnailFromStrips(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "StripOffsets"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    nop

    const-string v4, "StripByteCounts"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v3, :cond_cf

    if-eqz v4, :cond_cf

    iget-object v5, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v3, v5}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Landroid/media/ExifInterfaceUtils;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v5

    iget-object v6, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v4, v6}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Landroid/media/ExifInterfaceUtils;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v6

    const-string v7, "ExifInterface"

    if-eqz v5, :cond_c7

    array-length v8, v5

    if-nez v8, :cond_3a

    move-object/from16 v17, v3

    goto/16 :goto_c9

    :cond_3a
    if-eqz v6, :cond_bf

    array-length v8, v6

    if-nez v8, :cond_43

    move-object/from16 v17, v3

    goto/16 :goto_c1

    :cond_43
    array-length v8, v5

    array-length v9, v6

    if-eq v8, v9, :cond_4d

    const-string v8, "stripOffsets and stripByteCounts should have same length."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4d
    nop

    invoke-static {v6}, Ljava/util/Arrays;->stream([J)Ljava/util/stream/LongStream;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v8, v8, [B

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    iput-boolean v11, v0, Landroid/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    iput-boolean v11, v0, Landroid/media/ExifInterface;->mHasThumbnailStrips:Z

    iput-boolean v11, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const/4 v12, 0x0

    :goto_63
    array-length v13, v5

    if-ge v12, v13, :cond_a9

    aget-wide v14, v5, v12

    long-to-int v14, v14

    move/from16 v16, v14

    aget-wide v13, v6, v12

    long-to-int v14, v13

    array-length v13, v5

    sub-int/2addr v13, v11

    if-ge v12, v13, :cond_83

    add-int v13, v16, v14

    move-object/from16 v17, v3

    int-to-long v2, v13

    add-int/lit8 v13, v12, 0x1

    aget-wide v18, v5, v13

    cmp-long v2, v2, v18

    if-eqz v2, :cond_85

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    goto :goto_85

    :cond_83
    move-object/from16 v17, v3

    :cond_85
    :goto_85
    sub-int v2, v16, v9

    if-gez v2, :cond_8e

    const-string v3, "Invalid strip offset value"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8e
    move v15, v12

    int-to-long v11, v2

    invoke-virtual {v1, v11, v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    add-int/2addr v9, v2

    new-array v11, v14, [B

    invoke-virtual {v1, v11}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    add-int/2addr v9, v14

    array-length v12, v11

    const/4 v13, 0x0

    invoke-static {v11, v13, v8, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v12, v11

    add-int/2addr v10, v12

    add-int/lit8 v12, v15, 0x1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    const/4 v11, 0x1

    goto :goto_63

    :cond_a9
    move-object/from16 v17, v3

    move v15, v12

    iput-object v8, v0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    iget-boolean v2, v0, Landroid/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    if-eqz v2, :cond_d1

    const/4 v2, 0x0

    aget-wide v2, v5, v2

    long-to-int v2, v2

    iget v3, v0, Landroid/media/ExifInterface;->mExifOffset:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    array-length v2, v8

    iput v2, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    goto :goto_d1

    :cond_bf
    move-object/from16 v17, v3

    :goto_c1
    const-string v2, "stripByteCounts should not be null or have zero length."

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c7
    move-object/from16 v17, v3

    :goto_c9
    const-string v2, "stripOffsets should not be null or have zero length."

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_cf
    move-object/from16 v17, v3

    :cond_d1
    :goto_d1
    return-void
.end method

.method private initForFilename(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    iput-object p1, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    :try_start_a
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Landroid/os/FileUtils;->convertToModernFd(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_2b

    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v0, v3

    iput-object v2, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    goto :goto_3b

    :cond_2b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Landroid/media/ExifInterface;->isSeekableFD(Ljava/io/FileDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    iput-object v3, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    :cond_3b
    :goto_3b
    invoke-direct {p0, v0, v2}, Landroid/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;Ljava/io/FileDescriptor;)V
    :try_end_3e
    .catchall {:try_start_a .. :try_end_3e} :catchall_47

    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v1, :cond_46

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_46
    return-void

    :catchall_47
    move-exception v2

    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v1, :cond_50

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_50
    throw v2
.end method

.method private static isExifDataOnly(Ljava/io/BufferedInputStream;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    array-length v0, v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->reset()V

    const/4 v1, 0x0

    :goto_10
    sget-object v2, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    array-length v3, v2

    if-ge v1, v3, :cond_20

    aget-byte v3, v0, v1

    aget-byte v2, v2, v1

    if-eq v3, v2, :cond_1d

    const/4 v2, 0x0

    return v2

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_20
    const/4 v1, 0x1

    return v1
.end method

.method private isHeifFormat([B)Z
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_4
    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    move-object v2, v0

    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    int-to-long v4, v0

    const/4 v0, 0x4

    new-array v6, v0, [B

    invoke-virtual {v2, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    sget-object v7, Landroid/media/ExifInterface;->HEIF_TYPE_FTYP:[B

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1b} :catch_b4
    .catchall {:try_start_4 .. :try_end_1b} :catchall_b2

    if-nez v7, :cond_24

    nop

    nop

    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    const/4 v0, 0x0

    return v3

    :cond_24
    const-wide/16 v7, 0x8

    const-wide/16 v9, 0x1

    cmp-long v11, v4, v9

    const-wide/16 v12, 0x8

    if-nez v11, :cond_41

    :try_start_2e
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readLong()J

    move-result-wide v14
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_32} :catch_b4
    .catchall {:try_start_2e .. :try_end_32} :catchall_b2

    move-wide v4, v14

    const-wide/16 v14, 0x10

    cmp-long v11, v4, v14

    if-gez v11, :cond_40

    nop

    nop

    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    const/4 v0, 0x0

    return v3

    :cond_40
    add-long/2addr v7, v12

    :cond_41
    :try_start_41
    array-length v11, v1

    int-to-long v14, v11

    cmp-long v11, v4, v14

    if-lez v11, :cond_49

    array-length v11, v1
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_48} :catch_b4
    .catchall {:try_start_41 .. :try_end_48} :catchall_b2

    int-to-long v4, v11

    :cond_49
    sub-long v14, v4, v7

    cmp-long v11, v14, v12

    if-gez v11, :cond_56

    nop

    nop

    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    const/4 v0, 0x0

    return v3

    :cond_56
    :try_start_56
    new-array v0, v0, [B

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    :goto_5d
    const-wide/16 v18, 0x4

    div-long v18, v14, v18

    cmp-long v18, v16, v18

    if-gez v18, :cond_b1

    invoke-virtual {v2, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v9

    array-length v10, v0
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_6a} :catch_b4
    .catchall {:try_start_56 .. :try_end_6a} :catchall_b2

    if-eq v9, v10, :cond_73

    nop

    nop

    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    const/4 v2, 0x0

    return v3

    :cond_73
    const-wide/16 v9, 0x1

    cmp-long v20, v16, v9

    if-nez v20, :cond_7a

    goto :goto_ac

    :cond_7a
    :try_start_7a
    sget-object v9, Landroid/media/ExifInterface;->HEIF_BRAND_MIF1:[B

    invoke-static {v0, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_84

    const/4 v11, 0x1

    goto :goto_9f

    :cond_84
    sget-object v9, Landroid/media/ExifInterface;->HEIF_BRAND_HEIC:[B

    invoke-static {v0, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_8e

    const/4 v12, 0x1

    goto :goto_9f

    :cond_8e
    sget-object v9, Landroid/media/ExifInterface;->HEIF_BRAND_AVIF:[B

    invoke-static {v0, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_9e

    sget-object v9, Landroid/media/ExifInterface;->HEIF_BRAND_AVIS:[B

    invoke-static {v0, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_9c} :catch_b4
    .catchall {:try_start_7a .. :try_end_9c} :catchall_b2

    if-eqz v9, :cond_9f

    :cond_9e
    const/4 v13, 0x1

    :cond_9f
    :goto_9f
    if-eqz v11, :cond_ac

    if-nez v12, :cond_a5

    if-eqz v13, :cond_ac

    :cond_a5
    const/4 v3, 0x1

    nop

    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    const/4 v2, 0x0

    return v3

    :cond_ac
    :goto_ac
    const-wide/16 v9, 0x1

    add-long v16, v16, v9

    goto :goto_5d

    :cond_b1
    goto :goto_c2

    :catchall_b2
    move-exception v0

    goto :goto_c9

    :catch_b4
    move-exception v0

    :try_start_b5
    sget-boolean v4, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v4, :cond_c0

    const-string v4, "ExifInterface"

    const-string v5, "Exception parsing HEIF file type box."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c0
    .catchall {:try_start_b5 .. :try_end_c0} :catchall_b2

    :cond_c0
    if-eqz v2, :cond_c7

    :goto_c2
    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    const/4 v0, 0x0

    goto :goto_c8

    :cond_c7
    move-object v0, v2

    :goto_c8
    return v3

    :goto_c9
    if-eqz v2, :cond_cf

    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    const/4 v2, 0x0

    :cond_cf
    throw v0
.end method

.method private static isJpegFormat([B)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Landroid/media/ExifInterface;->JPEG_SIGNATURE:[B

    array-length v2, v1

    if-ge v0, v2, :cond_11

    aget-byte v2, p0, v0

    aget-byte v1, v1, v0

    if-eq v2, v1, :cond_e

    const/4 v1, 0x0

    return v1

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method private isOrfFormat([B)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v2, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    move-object v0, v2

    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v2

    iput-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_2a
    .catchall {:try_start_2 .. :try_end_15} :catchall_23

    const/16 v3, 0x4f52

    if-eq v2, v3, :cond_1d

    const/16 v3, 0x5352

    if-ne v2, v3, :cond_1e

    :cond_1d
    const/4 v1, 0x1

    :cond_1e
    nop

    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    return v1

    :catchall_23
    move-exception v1

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    :cond_29
    throw v1

    :catch_2a
    move-exception v2

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    :cond_30
    return v1
.end method

.method private isPngFormat([B)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Landroid/media/ExifInterface;->PNG_SIGNATURE:[B

    array-length v2, v1

    if-ge v0, v2, :cond_11

    aget-byte v2, p1, v0

    aget-byte v1, v1, v0

    if-eq v2, v1, :cond_e

    const/4 v1, 0x0

    return v1

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method private isRafFormat([B)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "FUJIFILMCCD-RAW"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_15

    aget-byte v2, p1, v1

    aget-byte v3, v0, v1

    if-eq v2, v3, :cond_12

    const/4 v2, 0x0

    return v2

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    const/4 v1, 0x1

    return v1
.end method

.method private isRw2Format([B)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v2, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    move-object v0, v2

    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v2

    iput-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v2

    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_29
    .catchall {:try_start_2 .. :try_end_18} :catchall_22

    const/16 v3, 0x55

    if-ne v2, v3, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    nop

    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    return v1

    :catchall_22
    move-exception v1

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    :cond_28
    throw v1

    :catch_29
    move-exception v2

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    :cond_2f
    return v1
.end method

.method private static isSeekableFD(Ljava/io/FileDescriptor;)Z
    .registers 4

    const-wide/16 v0, 0x0

    :try_start_2
    sget v2, Landroid/system/OsConstants;->SEEK_CUR:I

    invoke-static {p0, v0, v1, v2}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_7} :catch_9

    const/4 v0, 0x1

    return v0

    :catch_9
    move-exception v0

    sget-boolean v1, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v1, :cond_15

    const-string v1, "ExifInterface"

    const-string v2, "The file descriptor for the given input is not seekable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method private isSupportedDataType(Ljava/util/HashMap;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    nop

    const-string v0, "BitsPerSample"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_47

    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    sget-object v2, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1d

    return v4

    :cond_1d
    iget v3, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_47

    nop

    const-string v3, "PhotometricInterpretation"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v3, :cond_47

    iget-object v5, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v5}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v5

    if-ne v5, v4, :cond_3d

    sget-object v6, Landroid/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v6

    if-nez v6, :cond_46

    :cond_3d
    const/4 v6, 0x6

    if-ne v5, v6, :cond_47

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_47

    :cond_46
    return v4

    :cond_47
    sget-boolean v1, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v1, :cond_52

    const-string v1, "ExifInterface"

    const-string v2, "Unsupported data type value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    const/4 v1, 0x0

    return v1
.end method

.method private isSupportedFormatForSavingAttributes()Z
    .registers 3

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z

    if-eqz v0, :cond_18

    iget v0, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    const/16 v1, 0xd

    if-eq v0, v1, :cond_16

    const/16 v1, 0xe

    if-eq v0, v1, :cond_16

    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    if-nez v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportedMimeType(Ljava/lang/String;)Z
    .registers 6

    if-eqz p0, :cond_ba

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_c2

    :cond_12
    goto/16 :goto_b5

    :sswitch_14
    const-string v2, "image/x-canon-cr2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v1, 0x2

    goto/16 :goto_b5

    :sswitch_1f
    const-string v2, "image/x-nikon-nrw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v1, 0x4

    goto/16 :goto_b5

    :sswitch_2a
    const-string v2, "image/x-nikon-nef"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v1, 0x3

    goto/16 :goto_b5

    :sswitch_35
    const-string v2, "image/x-olympus-orf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v1, 0x7

    goto/16 :goto_b5

    :sswitch_40
    const-string v2, "image/x-pentax-pef"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v1, 0x8

    goto/16 :goto_b5

    :sswitch_4c
    const-string v2, "image/png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v1, 0xd

    goto :goto_b5

    :sswitch_57
    const-string v2, "image/x-panasonic-rw2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v1, 0x6

    goto :goto_b5

    :sswitch_61
    const-string v2, "image/x-adobe-dng"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v1, v4

    goto :goto_b5

    :sswitch_6b
    const-string v2, "image/webp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v1, 0xe

    goto :goto_b5

    :sswitch_76
    const-string v2, "image/jpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v1, v3

    goto :goto_b5

    :sswitch_80
    const-string v2, "image/heif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v1, 0xc

    goto :goto_b5

    :sswitch_8b
    const-string v2, "image/heic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v1, 0xb

    goto :goto_b5

    :sswitch_96
    const-string v2, "image/x-sony-arw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v1, 0x5

    goto :goto_b5

    :sswitch_a0
    const-string v2, "image/x-samsung-srw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v1, 0x9

    goto :goto_b5

    :sswitch_ab
    const-string v2, "image/x-fuji-raf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v1, 0xa

    :goto_b5
    packed-switch v1, :pswitch_data_100

    return v3

    :pswitch_b9  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe
    return v4

    :cond_ba
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mimeType shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_c2
    .sparse-switch
        -0x6fc6acff -> :sswitch_ab
        -0x617ac9e4 -> :sswitch_a0
        -0x5f082c57 -> :sswitch_96
        -0x58a8e8f5 -> :sswitch_8b
        -0x58a8e8f2 -> :sswitch_80
        -0x58a7d764 -> :sswitch_76
        -0x58a21830 -> :sswitch_6b
        -0x54d6098a -> :sswitch_61
        -0x3ab85cc1 -> :sswitch_57
        -0x34686c8b -> :sswitch_4c
        -0x13d592a1 -> :sswitch_40
        0x52243d4a -> :sswitch_35
        0x7d1e84e8 -> :sswitch_2a
        0x7d1e868c -> :sswitch_1f
        0x7dd6e2bc -> :sswitch_14
    .end sparse-switch

    :pswitch_data_100
    .packed-switch 0x0
        :pswitch_b9  #00000000
        :pswitch_b9  #00000001
        :pswitch_b9  #00000002
        :pswitch_b9  #00000003
        :pswitch_b9  #00000004
        :pswitch_b9  #00000005
        :pswitch_b9  #00000006
        :pswitch_b9  #00000007
        :pswitch_b9  #00000008
        :pswitch_b9  #00000009
        :pswitch_b9  #0000000a
        :pswitch_b9  #0000000b
        :pswitch_b9  #0000000c
        :pswitch_b9  #0000000d
        :pswitch_b9  #0000000e
    .end packed-switch
.end method

.method private isThumbnail(Ljava/util/HashMap;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ImageLength"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    const-string v1, "ImageWidth"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_28

    if-eqz v1, :cond_28

    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    const/16 v4, 0x200

    if-gt v2, v4, :cond_28

    if-gt v3, v4, :cond_28

    const/4 v4, 0x1

    return v4

    :cond_28
    const/4 v2, 0x0

    return v2
.end method

.method private isWebpFormat([B)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Landroid/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_11

    aget-byte v2, p1, v0

    aget-byte v1, v1, v0

    if-eq v2, v1, :cond_e

    return v3

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    const/4 v0, 0x0

    :goto_12
    sget-object v1, Landroid/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v2, v1

    if-ge v0, v2, :cond_27

    sget-object v2, Landroid/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v2, v2

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x4

    aget-byte v2, p1, v2

    aget-byte v1, v1, v0

    if-eq v2, v1, :cond_24

    return v3

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_27
    const/4 v0, 0x1

    return v0
.end method

.method private loadAttributes(Ljava/io/InputStream;Ljava/io/FileDescriptor;)V
    .registers 7

    if-eqz p1, :cond_8e

    const/4 v0, 0x0

    :goto_3
    const/4 v1, 0x0

    :try_start_4
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v0, v2, :cond_15

    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_15
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mIsExifDataOnly:Z

    if-nez v0, :cond_2a

    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1388

    invoke-direct {v0, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v0

    move-object v0, p1

    check-cast v0, Ljava/io/BufferedInputStream;

    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getMimeType(Ljava/io/BufferedInputStream;)I

    move-result v0

    iput v0, p0, Landroid/media/ExifInterface;->mMimeType:I

    :cond_2a
    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    iget-boolean v2, p0, Landroid/media/ExifInterface;->mIsExifDataOnly:Z

    if-nez v2, :cond_59

    iget v2, p0, Landroid/media/ExifInterface;->mMimeType:I

    packed-switch v2, :pswitch_data_96

    goto :goto_5c

    :pswitch_39  #0xe
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getWebpAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_5c

    :pswitch_3d  #0xd
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getPngAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_5c

    :pswitch_41  #0xc
    invoke-direct {p0, v0, p2}, Landroid/media/ExifInterface;->getHeifAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/io/FileDescriptor;)V

    goto :goto_5c

    :pswitch_45  #0xa
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getRw2Attributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_5c

    :pswitch_49  #0x9
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getRafAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_5c

    :pswitch_4d  #0x7
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getOrfAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_5c

    :pswitch_51  #0x4
    invoke-direct {p0, v0, v1, v1}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    goto :goto_5c

    :pswitch_55  #0x0, 0x1, 0x2, 0x3, 0x5, 0x6, 0x8, 0xb
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getRawAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_5c

    :cond_59
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getStandaloneAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    :goto_5c
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->setThumbnailData(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_62} :catch_6f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_62} :catch_6f
    .catchall {:try_start_4 .. :try_end_62} :catchall_6d

    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_82

    :goto_69
    invoke-direct {p0}, Landroid/media/ExifInterface;->printAttributes()V

    goto :goto_82

    :catchall_6d
    move-exception v0

    goto :goto_83

    :catch_6f
    move-exception v0

    :try_start_70
    iput-boolean v1, p0, Landroid/media/ExifInterface;->mIsSupportedFile:Z

    const-string v1, "ExifInterface"

    const-string v2, "Invalid image: ExifInterface got an unsupported image format file(ExifInterface supports JPEG and some RAW image formats only) or a corrupted JPEG file to ExifInterface."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_79
    .catchall {:try_start_70 .. :try_end_79} :catchall_6d

    nop

    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_82

    goto :goto_69

    :cond_82
    :goto_82
    return-void

    :goto_83
    invoke-direct {p0}, Landroid/media/ExifInterface;->addDefaultValuesForCompatibility()V

    sget-boolean v1, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v1, :cond_8d

    invoke-direct {p0}, Landroid/media/ExifInterface;->printAttributes()V

    :cond_8d
    throw v0

    :cond_8e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inputstream shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_55  #00000000
        :pswitch_55  #00000001
        :pswitch_55  #00000002
        :pswitch_55  #00000003
        :pswitch_51  #00000004
        :pswitch_55  #00000005
        :pswitch_55  #00000006
        :pswitch_4d  #00000007
        :pswitch_55  #00000008
        :pswitch_49  #00000009
        :pswitch_45  #0000000a
        :pswitch_55  #0000000b
        :pswitch_41  #0000000c
        :pswitch_3d  #0000000d
        :pswitch_39  #0000000e
    .end packed-switch
.end method

.method private static parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 13

    const-wide/16 v0, -0x1

    if-eqz p0, :cond_72

    sget-object v2, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_72

    :cond_11
    new-instance v2, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/text/ParsePosition;-><init>(I)V

    :try_start_17
    sget-object v4, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    monitor-enter v4
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_1a} :catch_70

    :try_start_1a
    sget-object v5, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, p0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v5

    monitor-exit v4
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_6d

    if-eqz p2, :cond_50

    :try_start_23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object p0, v4

    new-instance v4, Ljava/text/ParsePosition;

    invoke-direct {v4, v3}, Ljava/text/ParsePosition;-><init>(I)V

    move-object v3, v4

    sget-object v4, Landroid/media/ExifInterface;->sFormatterTz:Ljava/text/SimpleDateFormat;

    monitor-enter v4
    :try_end_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_44} :catch_70

    :try_start_44
    sget-object v6, Landroid/media/ExifInterface;->sFormatterTz:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, p0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v6

    move-object v5, v6

    monitor-exit v4

    goto :goto_50

    :catchall_4d
    move-exception v6

    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_44 .. :try_end_4f} :catchall_4d

    :try_start_4f
    throw v6

    :cond_50
    :goto_50
    if-nez v5, :cond_53

    return-wide v0

    :cond_53
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v3
    :try_end_57
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4f .. :try_end_57} :catch_70

    if-eqz p1, :cond_6c

    :try_start_59
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    :goto_5d
    const-wide/16 v8, 0x3e8

    cmp-long v8, v6, v8

    if-lez v8, :cond_69

    const-wide/16 v8, 0xa

    div-long v8, v6, v8
    :try_end_67
    .catch Ljava/lang/NumberFormatException; {:try_start_59 .. :try_end_67} :catch_6b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_59 .. :try_end_67} :catch_70

    move-wide v6, v8

    goto :goto_5d

    :cond_69
    add-long/2addr v3, v6

    goto :goto_6c

    :catch_6b
    move-exception v0

    :cond_6c
    :goto_6c
    return-wide v3

    :catchall_6d
    move-exception v3

    :try_start_6e
    monitor-exit v4
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    :try_start_6f
    throw v3
    :try_end_70
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6f .. :try_end_70} :catch_70

    :catch_70
    move-exception v3

    return-wide v0

    :cond_72
    :goto_72
    return-wide v0
.end method

.method private parseTiffHeaders(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v0

    iget v1, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_38

    const/16 v2, 0xa

    if-eq v1, v2, :cond_38

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1b

    goto :goto_38

    :cond_1b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid start code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    :goto_38
    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_67

    if-ge v1, p2, :cond_67

    add-int/lit8 v1, v1, -0x8

    if-lez v1, :cond_66

    invoke-virtual {p1, v1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v2

    if-ne v2, v1, :cond_4d

    goto :goto_66

    :cond_4d
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t jump to first Ifd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_66
    :goto_66
    return-void

    :cond_67
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid first Ifd offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private printAttributes()V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    array-length v1, v1

    if-ge v0, v1, :cond_91

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The size of tag group["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExifInterface"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tagName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tagType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/media/ExifInterface$ExifAttribute;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tagValue: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v6}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    :cond_8d
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_91
    return-void
.end method

.method private readByteOrder(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v0

    const-string v1, "ExifInterface"

    sparse-switch v0, :sswitch_data_3e

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid byte order: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_26
    sget-boolean v2, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v2, :cond_2f

    const-string v2, "readExifSegment: Byte Align MM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object v1

    :sswitch_32
    sget-boolean v2, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v2, :cond_3b

    const-string v2, "readExifSegment: Byte Align II"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-object v1

    :sswitch_data_3e
    .sparse-switch
        0x4949 -> :sswitch_32
        0x4d4d -> :sswitch_26
    .end sparse-switch
.end method

.method private readExifSegment([BI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Landroid/media/ExifInterface;->parseTiffHeaders(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    invoke-direct {p0, v0, p2}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    return-void
.end method

.method private readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmPosition(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmPosition(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v3

    const/4 v4, 0x2

    add-int/2addr v3, v4

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmLength(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v5

    if-le v3, v5, :cond_20

    return-void

    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v3

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmPosition(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v5

    mul-int/lit8 v6, v3, 0xc

    add-int/2addr v5, v6

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmLength(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v6

    if-gt v5, v6, :cond_3ff

    if-gtz v3, :cond_37

    move/from16 v23, v3

    goto/16 :goto_401

    :cond_37
    sget-boolean v5, Landroid/media/ExifInterface;->DEBUG:Z

    const-string v6, "ExifInterface"

    if-eqz v5, :cond_53

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numberOfDirectoryEntry: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    const/4 v5, 0x0

    :goto_54
    const/4 v9, 0x0

    const/4 v10, 0x5

    const/4 v12, 0x4

    if-ge v5, v3, :cond_368

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v16

    add-int/lit8 v7, v16, 0x4

    int-to-long v7, v7

    sget-object v16, Landroid/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v12, v16, v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifTag;

    sget-boolean v12, Landroid/media/ExifInterface;->DEBUG:Z

    const/4 v11, 0x3

    if-eqz v12, :cond_b0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v10, v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v16, 0x1

    aput-object v20, v10, v16

    if-eqz v4, :cond_94

    iget-object v9, v4, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    goto :goto_95

    :cond_94
    const/4 v9, 0x0

    :goto_95
    const/16 v21, 0x2

    aput-object v9, v10, v21

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v10, v11

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v19, 0x4

    aput-object v9, v10, v19

    const-string v9, "ifdType: %d, tagNumber: %d, tagName: %s, dataFormat: %d, numberOfComponents: %d"

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b0
    const-wide/16 v9, 0x0

    const/16 v22, 0x0

    if-nez v4, :cond_d8

    if-eqz v12, :cond_d3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v3

    const-string v3, "Skip the tag entry since tag number is not defined: "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v24, v9

    goto :goto_12f

    :cond_d3
    move/from16 v23, v3

    move-wide/from16 v24, v9

    goto :goto_12f

    :cond_d8
    move/from16 v23, v3

    if-lez v15, :cond_115

    sget-object v3, Landroid/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    array-length v11, v3

    if-lt v15, v11, :cond_e4

    move-wide/from16 v24, v9

    goto :goto_117

    :cond_e4
    move-wide/from16 v24, v9

    int-to-long v9, v14

    aget v3, v3, v15

    int-to-long v2, v3

    mul-long/2addr v9, v2

    const-wide/16 v2, 0x0

    cmp-long v11, v9, v2

    if-ltz v11, :cond_fc

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v9, v2

    if-lez v2, :cond_f9

    goto :goto_fc

    :cond_f9
    const/16 v22, 0x1

    goto :goto_131

    :cond_fc
    :goto_fc
    if-eqz v12, :cond_131

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip the tag entry since the number of components is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_131

    :cond_115
    move-wide/from16 v24, v9

    :goto_117
    if-eqz v12, :cond_12f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip the tag entry since data format is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12f
    :goto_12f
    move-wide/from16 v9, v24

    :cond_131
    :goto_131
    if-nez v22, :cond_13b

    invoke-virtual {v1, v7, v8}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    move/from16 v24, v5

    const/4 v5, 0x2

    goto/16 :goto_35d

    :cond_13b
    const-wide/16 v2, 0x4

    cmp-long v2, v9, v2

    const-string v3, "Compression"

    if-lez v2, :cond_20c

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    if-eqz v12, :cond_162

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v5

    const-string v5, "seek to data offset: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_164

    :cond_162
    move/from16 v24, v5

    :goto_164
    iget v5, v0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v11, 0x7

    if-ne v5, v11, :cond_1c9

    iget-object v5, v4, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v11, "MakerNote"

    if-ne v5, v11, :cond_178

    iput v2, v0, Landroid/media/ExifInterface;->mOrfMakerNoteOffset:I

    move/from16 v27, v13

    move/from16 v26, v14

    move/from16 v25, v15

    goto :goto_1db

    :cond_178
    const/4 v5, 0x6

    move/from16 v11, p2

    if-ne v11, v5, :cond_1c2

    iget-object v5, v4, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v11, "ThumbnailImage"

    if-ne v5, v11, :cond_1c2

    iput v2, v0, Landroid/media/ExifInterface;->mOrfThumbnailOffset:I

    iput v14, v0, Landroid/media/ExifInterface;->mOrfThumbnailLength:I

    iget-object v5, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    const/4 v11, 0x6

    invoke-static {v11, v5}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v5

    iget v11, v0, Landroid/media/ExifInterface;->mOrfThumbnailOffset:I

    move/from16 v26, v14

    move/from16 v25, v15

    int-to-long v14, v11

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v14, v15, v11}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v11

    iget v14, v0, Landroid/media/ExifInterface;->mOrfThumbnailLength:I

    int-to-long v14, v14

    move/from16 v27, v13

    iget-object v13, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v14, v15, v13}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v13

    iget-object v14, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v15, 0x4

    aget-object v14, v14, v15

    invoke-virtual {v14, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v14, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v14, v14, v15

    const-string v15, "JPEGInterchangeFormat"

    invoke-virtual {v14, v15, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v14, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v15, 0x4

    aget-object v14, v14, v15

    const-string v15, "JPEGInterchangeFormatLength"

    invoke-virtual {v14, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1db

    :cond_1c2
    move/from16 v27, v13

    move/from16 v26, v14

    move/from16 v25, v15

    goto :goto_1db

    :cond_1c9
    move/from16 v27, v13

    move/from16 v26, v14

    move/from16 v25, v15

    const/16 v11, 0xa

    if-ne v5, v11, :cond_1db

    iget-object v5, v4, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v11, "JpgFromRaw"

    if-ne v5, v11, :cond_1db

    iput v2, v0, Landroid/media/ExifInterface;->mRw2JpgFromRawOffset:I

    :cond_1db
    :goto_1db
    int-to-long v13, v2

    add-long/2addr v13, v9

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmLength(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v5

    move-object/from16 v28, v3

    move-object v11, v4

    int-to-long v3, v5

    cmp-long v3, v13, v3

    if-gtz v3, :cond_1ee

    int-to-long v3, v2

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto :goto_217

    :cond_1ee
    if-eqz v12, :cond_206

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip the tag entry since data offset is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_206
    invoke-virtual {v1, v7, v8}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    const/4 v5, 0x2

    goto/16 :goto_35d

    :cond_20c
    move-object/from16 v28, v3

    move-object v11, v4

    move/from16 v24, v5

    move/from16 v27, v13

    move/from16 v26, v14

    move/from16 v25, v15

    :goto_217
    sget-object v2, Landroid/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v12, :cond_245

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nextIfdType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " byteCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_245
    if-eqz v2, :cond_2ed

    const-wide/16 v3, -0x1

    sparse-switch v25, :sswitch_data_402

    goto :goto_264

    :sswitch_24d
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v5

    int-to-long v3, v5

    goto :goto_264

    :sswitch_253
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v5

    int-to-long v3, v5

    goto :goto_264

    :sswitch_259
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v3

    goto :goto_264

    :sswitch_25e
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v5

    int-to-long v3, v5

    nop

    :goto_264
    if-eqz v12, :cond_27f

    const/4 v5, 0x2

    new-array v13, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    iget-object v14, v11, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const/4 v15, 0x1

    aput-object v14, v13, v15

    const-string v14, "Offset: %d, tagName: %s"

    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_280

    :cond_27f
    const/4 v5, 0x2

    :goto_280
    const-wide/16 v13, 0x0

    cmp-long v13, v3, v13

    if-lez v13, :cond_2d0

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmLength(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v13

    int-to-long v13, v13

    cmp-long v13, v3, v13

    if-gez v13, :cond_2d0

    iget-object v13, v0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    long-to-int v14, v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2a7

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v0, v1, v12}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_2e8

    :cond_2a7
    if-eqz v12, :cond_2e8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skip jump into the IFD since it has already been read: IfdType "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e8

    :cond_2d0
    if-eqz v12, :cond_2e8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skip jump into the IFD since its offset is invalid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e8
    :goto_2e8
    invoke-virtual {v1, v7, v8}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto/16 :goto_35d

    :cond_2ed
    const/4 v5, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v3

    iget v4, v0, Landroid/media/ExifInterface;->mExifOffset:I

    add-int/2addr v3, v4

    long-to-int v4, v9

    new-array v4, v4, [B

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    new-instance v12, Landroid/media/ExifInterface$ExifAttribute;

    int-to-long v13, v3

    const/16 v20, 0x0

    move-wide/from16 v17, v13

    move/from16 v13, v26

    move-object v14, v12

    move/from16 v21, v25

    move/from16 v15, v21

    move/from16 v16, v13

    move-object/from16 v19, v4

    invoke-direct/range {v14 .. v20}, Landroid/media/ExifInterface$ExifAttribute;-><init>(IIJ[BLandroid/media/ExifInterface$ExifAttribute-IA;)V

    iget-object v14, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v14, v14, p2

    iget-object v15, v11, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v14, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v14, v11, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v15, "DNGVersion"

    if-ne v14, v15, :cond_322

    const/4 v14, 0x3

    iput v14, v0, Landroid/media/ExifInterface;->mMimeType:I

    :cond_322
    iget-object v14, v11, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v15, "Make"

    if-eq v14, v15, :cond_32e

    iget-object v14, v11, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v15, "Model"

    if-ne v14, v15, :cond_33c

    :cond_32e
    iget-object v14, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v12, v14}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "PENTAX"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_34d

    :cond_33c
    iget-object v14, v11, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    move-object/from16 v15, v28

    if-ne v14, v15, :cond_351

    iget-object v14, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v12, v14}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v14

    const v15, 0xffff

    if-ne v14, v15, :cond_351

    :cond_34d
    const/16 v14, 0x8

    iput v14, v0, Landroid/media/ExifInterface;->mMimeType:I

    :cond_351
    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v14

    int-to-long v14, v14

    cmp-long v14, v14, v7

    if-eqz v14, :cond_35d

    invoke-virtual {v1, v7, v8}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    :cond_35d
    :goto_35d
    add-int/lit8 v2, v24, 0x1

    int-to-short v2, v2

    move v4, v5

    move/from16 v3, v23

    move v5, v2

    move/from16 v2, p2

    goto/16 :goto_54

    :cond_368
    move/from16 v23, v3

    move/from16 v24, v5

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v2

    const/4 v3, 0x4

    add-int/2addr v2, v3

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmLength(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v3

    if-gt v2, v3, :cond_3fe

    invoke-virtual/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    sget-boolean v3, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v3, :cond_393

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    const-string v5, "nextIfdOffset: %d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_393
    int-to-long v4, v2

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    if-lez v4, :cond_3e6

    invoke-static/range {p1 .. p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->-$$Nest$fgetmLength(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v4

    if-ge v2, v4, :cond_3e6

    iget-object v4, v0, Landroid/media/ExifInterface;->mHandledIfdOffsets:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3cd

    int-to-long v3, v2

    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3bf

    invoke-direct {v0, v1, v4}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_3fe

    :cond_3bf
    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v10

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3fe

    invoke-direct {v0, v1, v10}, Landroid/media/ExifInterface;->readImageFileDirectory(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_3fe

    :cond_3cd
    if-eqz v3, :cond_3fe

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop reading file since re-reading an IFD may cause an infinite loop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3fe

    :cond_3e6
    if-eqz v3, :cond_3fe

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop reading file since a wrong offset may cause an infinite loop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3fe
    :goto_3fe
    return-void

    :cond_3ff
    move/from16 v23, v3

    :goto_401
    return-void

    :sswitch_data_402
    .sparse-switch
        0x3 -> :sswitch_25e
        0x4 -> :sswitch_259
        0x8 -> :sswitch_253
        0x9 -> :sswitch_24d
        0xd -> :sswitch_24d
    .end sparse-switch
.end method

.method private removeAttribute(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method

.method private replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    return-void
.end method

.method private retrieveJpegImageSize(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "ImageLength"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v1, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "ImageWidth"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_1c

    if-nez v1, :cond_33

    :cond_1c
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    const-string v3, "JPEGInterchangeFormat"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v2, :cond_33

    iget-object v3, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    invoke-direct {p0, p1, v3, p2}, Landroid/media/ExifInterface;->getJpegAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;II)V

    :cond_33
    return-void
.end method

.method private saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveJpegAttributes starting with (inputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, p2, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    const-string v3, "Invalid marker"

    const/4 v4, -0x1

    if-ne v2, v4, :cond_131

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    const/16 v5, -0x28

    if-ne v2, v5, :cond_12b

    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    const/4 v2, 0x0

    const-string v5, "Xmp"

    invoke-virtual {p0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_68

    iget-boolean v6, p0, Landroid/media/ExifInterface;->mXmpIsFromSeparateMarker:Z

    if-eqz v6, :cond_68

    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v7

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    :cond_68
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    const/16 v6, -0x1f

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    invoke-direct {p0, v1}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I

    if-eqz v2, :cond_7c

    iget-object v6, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v7

    invoke-virtual {v6, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7c
    const/16 v5, 0x1000

    new-array v5, v5, [B

    :goto_80
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    if-ne v6, v4, :cond_125

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    const-string v8, "Invalid length"

    sparse-switch v6, :sswitch_data_138

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    add-int/lit8 v9, v9, -0x2

    if-ltz v9, :cond_11f

    goto :goto_10a

    :sswitch_a1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    if-ltz v9, :cond_fa

    const/4 v10, 0x6

    new-array v11, v10, [B

    if-lt v9, v10, :cond_d5

    invoke-virtual {v0, v11}, Ljava/io/DataInputStream;->read([B)I

    move-result v12

    if-ne v12, v10, :cond_cd

    sget-object v12, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v11, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-eqz v12, :cond_d5

    add-int/lit8 v10, v9, -0x6

    invoke-virtual {v0, v10}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v10

    add-int/lit8 v12, v9, -0x6

    if-ne v10, v12, :cond_c7

    goto :goto_11d

    :cond_c7
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_cd
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid exif"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_d5
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    add-int/lit8 v8, v9, 0x2

    invoke-virtual {v1, v8}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    if-lt v9, v10, :cond_e7

    add-int/lit8 v9, v9, -0x6

    invoke-virtual {v1, v11}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    :cond_e7
    :goto_e7
    if-lez v9, :cond_11d

    array-length v8, v5

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v0, v5, v7, v8}, Ljava/io/DataInputStream;->read([BII)I

    move-result v8

    move v10, v8

    if-ltz v8, :cond_11d

    invoke-virtual {v1, v5, v7, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    sub-int/2addr v9, v10

    goto :goto_e7

    :cond_fa
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_100
    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    invoke-static {v0, v1}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    return-void

    :goto_10a
    if-lez v9, :cond_11d

    array-length v8, v5

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v0, v5, v7, v8}, Ljava/io/DataInputStream;->read([BII)I

    move-result v8

    move v10, v8

    if-ltz v8, :cond_11d

    invoke-virtual {v1, v5, v7, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    sub-int/2addr v9, v10

    goto :goto_10a

    :cond_11d
    :goto_11d
    goto/16 :goto_80

    :cond_11f
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_125
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_12b
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_131
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :sswitch_data_138
    .sparse-switch
        -0x27 -> :sswitch_100
        -0x26 -> :sswitch_100
        -0x1f -> :sswitch_a1
    .end sparse-switch
.end method

.method private savePngAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "savePngAttributes starting with (inputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outputStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, p2, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    sget-object v2, Landroid/media/ExifInterface;->PNG_SIGNATURE:[B

    array-length v3, v2

    invoke-static {v0, v1, v3}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    iget v3, p0, Landroid/media/ExifInterface;->mExifOffset:I

    const/4 v4, 0x4

    if-nez v3, :cond_51

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    add-int/lit8 v3, v2, 0x4

    add-int/2addr v3, v4

    invoke-static {v0, v1, v3}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    goto :goto_62

    :cond_51
    array-length v2, v2

    sub-int/2addr v3, v2

    sub-int/2addr v3, v4

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v3}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    add-int/lit8 v5, v2, 0x4

    add-int/2addr v5, v4

    invoke-virtual {v0, v5}, Ljava/io/DataInputStream;->skipBytes(I)I

    :goto_62
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_67
    new-instance v3, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v3, v2, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    invoke-direct {p0, v3}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I

    iget-object v5, v3, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->mOutputStream:Ljava/io/OutputStream;

    check-cast v5, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    new-instance v6, Ljava/util/zip/CRC32;

    invoke-direct {v6}, Ljava/util/zip/CRC32;-><init>()V

    array-length v7, v5

    sub-int/2addr v7, v4

    invoke-virtual {v6, v5, v4, v7}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v6}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v7

    long-to-int v4, v7

    invoke-virtual {v1, v4}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V
    :try_end_8e
    .catchall {:try_start_67 .. :try_end_8e} :catchall_95

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-static {v0, v1}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    return-void

    :catchall_95
    move-exception v3

    :try_start_96
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_9a

    goto :goto_9e

    :catchall_9a
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9e
    throw v3
.end method

.method private saveWebpAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveWebpAttributes starting with (inputStream: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", outputStream: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ExifInterface"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v2, v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    move-object v4, v0

    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v0, v3, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    move-object v5, v0

    sget-object v0, Landroid/media/ExifInterface;->WEBP_SIGNATURE_1:[B

    array-length v6, v0

    invoke-static {v4, v5, v6}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    sget-object v6, Landroid/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v7, v6

    const/4 v8, 0x4

    add-int/2addr v7, v8

    invoke-virtual {v4, v7}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    const/4 v7, 0x0

    :try_start_51
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v7, v9

    new-instance v9, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v9, v7, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    iget v10, v1, Landroid/media/ExifInterface;->mExifOffset:I

    if-eqz v10, :cond_7b

    array-length v0, v0

    add-int/2addr v0, v8

    array-length v6, v6

    add-int/2addr v0, v6

    sub-int/2addr v10, v0

    sub-int/2addr v10, v8

    sub-int/2addr v10, v8

    invoke-static {v4, v9, v10}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    invoke-virtual {v4, v8}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    invoke-virtual {v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    invoke-direct {v1, v9}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I

    goto/16 :goto_1e0

    :cond_7b
    new-array v0, v8, [B

    invoke-virtual {v4, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v6

    array-length v10, v0

    if-ne v6, v10, :cond_1f9

    sget-object v6, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8X:[B

    invoke-static {v0, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v10, :cond_e2

    invoke-virtual {v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v10

    rem-int/lit8 v14, v10, 0x2

    if-ne v14, v13, :cond_9b

    add-int/lit8 v14, v10, 0x1

    goto :goto_9c

    :cond_9b
    move v14, v10

    :goto_9c
    new-array v14, v14, [B

    invoke-virtual {v4, v14}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    aget-byte v15, v14, v12

    or-int/2addr v11, v15

    int-to-byte v11, v11

    aput-byte v11, v14, v12

    aget-byte v11, v14, v12

    shr-int/2addr v11, v13

    and-int/2addr v11, v13

    if-ne v11, v13, :cond_ae

    move v12, v13

    :cond_ae
    move v11, v12

    invoke-virtual {v9, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    invoke-virtual {v9, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    invoke-virtual {v9, v14}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    if-eqz v11, :cond_d6

    sget-object v6, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_ANIM:[B

    const/4 v12, 0x0

    invoke-direct {v1, v4, v9, v6, v12}, Landroid/media/ExifInterface;->copyChunksUpToGivenChunkType(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Landroid/media/ExifInterface$ByteOrderedDataOutputStream;[B[B)V

    :goto_c0
    new-array v6, v8, [B

    invoke-virtual {v2, v6}, Ljava/io/InputStream;->read([B)I

    move-result v12

    sget-object v13, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_ANMF:[B

    invoke-static {v6, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v13

    if-nez v13, :cond_d2

    invoke-direct {v1, v9}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I

    goto :goto_e0

    :cond_d2
    invoke-direct {v1, v4, v9, v6}, Landroid/media/ExifInterface;->copyWebPChunk(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Landroid/media/ExifInterface$ByteOrderedDataOutputStream;[B)V

    goto :goto_c0

    :cond_d6
    sget-object v6, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    sget-object v8, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    invoke-direct {v1, v4, v9, v6, v8}, Landroid/media/ExifInterface;->copyChunksUpToGivenChunkType(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Landroid/media/ExifInterface$ByteOrderedDataOutputStream;[B[B)V

    invoke-direct {v1, v9}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I

    :goto_e0
    goto/16 :goto_1e0

    :cond_e2
    sget-object v10, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8:[B

    invoke-static {v0, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14

    if-nez v14, :cond_f2

    sget-object v14, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    invoke-static {v0, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14

    if-eqz v14, :cond_1e0

    :cond_f2
    invoke-virtual {v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v14

    move v15, v14

    rem-int/lit8 v11, v14, 0x2

    if-ne v11, v13, :cond_fd

    add-int/lit8 v15, v15, 0x1

    :cond_fd
    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v12, 0x3

    new-array v13, v12, [B

    invoke-static {v0, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v19

    if-eqz v19, :cond_13d

    invoke-virtual {v4, v13}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    new-array v12, v12, [B

    invoke-virtual {v4, v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v8

    array-length v2, v12

    if-ne v8, v2, :cond_135

    sget-object v2, Landroid/media/ExifInterface;->WEBP_VP8_SIGNATURE:[B

    invoke-static {v2, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_135

    invoke-virtual {v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    move v11, v2

    shl-int/lit8 v2, v11, 0x12

    shr-int/lit8 v16, v2, 0x12

    shl-int/lit8 v2, v11, 0x2

    shr-int/lit8 v17, v2, 0x12

    array-length v2, v13

    array-length v8, v12

    add-int/2addr v2, v8

    const/4 v8, 0x4

    add-int/2addr v2, v8

    sub-int/2addr v15, v2

    goto :goto_16c

    :cond_135
    new-instance v2, Ljava/io/IOException;

    const-string v6, "Encountered error while checking VP8 signature"

    invoke-direct {v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_13d
    sget-object v2, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_16c

    invoke-virtual {v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v2

    const/16 v8, 0x2f

    if-ne v2, v8, :cond_164

    invoke-virtual {v4}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v8

    move v11, v8

    shl-int/lit8 v8, v11, 0x12

    shr-int/lit8 v8, v8, 0x12

    const/4 v12, 0x1

    add-int/lit8 v16, v8, 0x1

    shl-int/lit8 v8, v11, 0x4

    shr-int/lit8 v8, v8, 0x12

    add-int/lit8 v17, v8, 0x1

    and-int/lit8 v18, v11, 0x8

    add-int/lit8 v15, v15, -0x5

    goto :goto_16d

    :cond_164
    new-instance v6, Ljava/io/IOException;

    const-string v8, "Encountered error while checking VP8L signature"

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_16c
    :goto_16c
    nop

    :goto_16d
    invoke-virtual {v9, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    const/16 v2, 0xa

    invoke-virtual {v9, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    new-array v2, v2, [B

    const/4 v6, 0x0

    aget-byte v8, v2, v6

    const/16 v12, 0x8

    or-int/2addr v8, v12

    int-to-byte v8, v8

    aput-byte v8, v2, v6

    aget-byte v8, v2, v6

    shl-int/lit8 v12, v18, 0x4

    or-int/2addr v8, v12

    int-to-byte v8, v8

    aput-byte v8, v2, v6

    add-int/lit8 v6, v16, -0x1

    add-int/lit8 v8, v17, -0x1

    int-to-byte v12, v6

    const/16 v16, 0x4

    aput-byte v12, v2, v16

    const/4 v12, 0x5

    shr-int/lit8 v3, v6, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v12

    const/4 v3, 0x6

    shr-int/lit8 v12, v6, 0x10

    int-to-byte v12, v12

    aput-byte v12, v2, v3

    const/4 v3, 0x7

    int-to-byte v12, v8

    aput-byte v12, v2, v3

    shr-int/lit8 v3, v8, 0x8

    int-to-byte v3, v3

    const/16 v12, 0x8

    aput-byte v3, v2, v12

    const/16 v3, 0x9

    shr-int/lit8 v12, v8, 0x10

    int-to-byte v12, v12

    aput-byte v12, v2, v3

    invoke-virtual {v9, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    invoke-virtual {v9, v0}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    invoke-virtual {v9, v14}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    invoke-static {v0, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1ca

    invoke-virtual {v9, v13}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    sget-object v3, Landroid/media/ExifInterface;->WEBP_VP8_SIGNATURE:[B

    invoke-virtual {v9, v3}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    invoke-virtual {v9, v11}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    goto :goto_1da

    :cond_1ca
    sget-object v3, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_VP8L:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1da

    const/16 v3, 0x2f

    invoke-virtual {v9, v3}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write(I)V

    invoke-virtual {v9, v11}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    :cond_1da
    :goto_1da
    invoke-static {v4, v9, v15}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    invoke-direct {v1, v9}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I

    :cond_1e0
    :goto_1e0
    invoke-static {v4, v9}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    sget-object v2, Landroid/media/ExifInterface;->WEBP_SIGNATURE_2:[B

    array-length v3, v2

    add-int/2addr v0, v3

    invoke-virtual {v5, v0}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    invoke-virtual {v5, v2}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    invoke-virtual {v7, v5}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1f4
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_1f4} :catch_203
    .catchall {:try_start_51 .. :try_end_1f4} :catchall_201

    invoke-static {v7}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    nop

    return-void

    :cond_1f9
    :try_start_1f9
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Encountered invalid length while parsing WebP chunk type"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_201
    .catch Ljava/lang/Exception; {:try_start_1f9 .. :try_end_201} :catch_203
    .catchall {:try_start_1f9 .. :try_end_201} :catchall_201

    :catchall_201
    move-exception v0

    goto :goto_20c

    :catch_203
    move-exception v0

    :try_start_204
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to save WebP file"

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_20c
    .catchall {:try_start_204 .. :try_end_20c} :catchall_201

    :goto_20c
    invoke-static {v7}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method private setThumbnailData(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    nop

    const-string v1, "Compression"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v1, :cond_2a

    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    iput v2, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    sparse-switch v2, :sswitch_data_2e

    goto :goto_29

    :sswitch_1c
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->handleThumbnailFromJfif(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    goto :goto_29

    :sswitch_20
    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->isSupportedDataType(Ljava/util/HashMap;)Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->handleThumbnailFromStrips(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    :cond_29
    :goto_29
    goto :goto_2d

    :cond_2a
    invoke-direct {p0, p1, v0}, Landroid/media/ExifInterface;->handleThumbnailFromJfif(Landroid/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    :goto_2d
    return-void

    :sswitch_data_2e
    .sparse-switch
        0x1 -> :sswitch_20
        0x6 -> :sswitch_1c
        0x7 -> :sswitch_20
    .end sparse-switch
.end method

.method private swapBasedOnImageSize(II)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const-string v1, "ExifInterface"

    if-nez v0, :cond_89

    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    goto/16 :goto_89

    :cond_18
    iget-object v0, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    const-string v2, "ImageLength"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p1

    const-string v4, "ImageWidth"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p2

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p2

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_7f

    if-nez v3, :cond_49

    goto :goto_7f

    :cond_49
    if-eqz v2, :cond_75

    if-nez v4, :cond_4e

    goto :goto_75

    :cond_4e
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    iget-object v5, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v5}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v5

    iget-object v6, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v6}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v6

    iget-object v7, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v7}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v7

    if-ge v1, v6, :cond_88

    if-ge v5, v7, :cond_88

    iget-object v8, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v8, p1

    aget-object v10, v8, p2

    aput-object v10, v8, p1

    aput-object v9, v8, p2

    goto :goto_88

    :cond_75
    :goto_75
    sget-boolean v5, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v5, :cond_88

    const-string v5, "Second image does not contain valid size information"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    :cond_7f
    :goto_7f
    sget-boolean v5, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v5, :cond_88

    const-string v5, "First image does not contain valid size information"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_88
    :goto_88
    return-void

    :cond_89
    :goto_89
    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_92

    const-string v0, "Cannot perform swap since only one image data exists"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_92
    return-void
.end method

.method private updateAttribute(Ljava/lang/String;Landroid/media/ExifInterface$ExifAttribute;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v1, v2, :cond_1c

    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1c
    return v0
.end method

.method private updateImageSizeValues(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "DefaultCropSize"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v2, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    const-string v3, "SensorTopBorder"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v3, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    const-string v4, "SensorLeftBorder"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    const-string v5, "SensorBottomBorder"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v5, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p2

    const-string v6, "SensorRightBorder"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/ExifInterface$ExifAttribute;

    const-string v6, "ImageLength"

    const-string v7, "ImageWidth"

    if-eqz v1, :cond_8e

    iget v8, v1, Landroid/media/ExifInterface$ExifAttribute;->format:I

    const/4 v9, 0x5

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-ne v8, v9, :cond_64

    iget-object v8, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v1, v8}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/media/ExifInterface$Rational;

    aget-object v9, v8, v11

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v9, v11}, Landroid/media/ExifInterface$ExifAttribute;->createURational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    aget-object v10, v8, v10

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v10, v11}, Landroid/media/ExifInterface$ExifAttribute;->createURational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v8

    goto :goto_7d

    :cond_64
    iget-object v8, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v1, v8}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    aget v9, v8, v11

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v9, v11}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    aget v10, v8, v10

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v10, v11}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v10

    move-object v8, v10

    :goto_7d
    iget-object v10, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, p2

    invoke-virtual {v10, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, p2

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v1

    goto :goto_db

    :cond_8e
    if-eqz v2, :cond_d6

    if-eqz v3, :cond_d6

    if-eqz v4, :cond_d6

    if-eqz v5, :cond_d6

    iget-object v8, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v8}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v8

    iget-object v9, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v9}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v9

    iget-object v10, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v10}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v10

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v11}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v11

    if-le v9, v8, :cond_d3

    if-le v10, v11, :cond_d3

    sub-int v12, v9, v8

    sub-int v13, v10, v11

    iget-object v14, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v12, v14}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v14

    iget-object v15, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v13, v15}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v15

    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    invoke-virtual {v1, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d5

    :cond_d3
    move-object/from16 v16, v1

    :goto_d5
    goto :goto_db

    :cond_d6
    move-object/from16 v16, v1

    invoke-direct/range {p0 .. p2}, Landroid/media/ExifInterface;->retrieveJpegImageSize(Landroid/media/ExifInterface$ByteOrderedDataInputStream;I)V

    :goto_db
    return-void
.end method

.method private validateImages()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Landroid/media/ExifInterface;->swapBasedOnImageSize(II)V

    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Landroid/media/ExifInterface;->swapBasedOnImageSize(II)V

    invoke-direct {p0, v1, v2}, Landroid/media/ExifInterface;->swapBasedOnImageSize(II)V

    iget-object v3, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-string v5, "PixelXDimension"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v5, v4

    const-string v5, "PixelYDimension"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    const-string v5, "ImageLength"

    const-string v6, "ImageWidth"

    if-eqz v3, :cond_3b

    if-eqz v4, :cond_3b

    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v0

    invoke-virtual {v7, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v0

    invoke-virtual {v7, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5c

    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v1

    invoke-direct {p0, v7}, Landroid/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v7

    if-eqz v7, :cond_5c

    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v7, v1

    aput-object v8, v7, v2

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    aput-object v8, v7, v1

    :cond_5c
    iget-object v7, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v2

    invoke-direct {p0, v7}, Landroid/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v7

    if-nez v7, :cond_6d

    const-string v7, "ExifInterface"

    const-string v8, "No image meets the size requirements of a thumbnail image."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    const-string v7, "ThumbnailOrientation"

    const-string v8, "Orientation"

    invoke-direct {p0, v0, v7, v8}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    const-string v9, "ThumbnailImageLength"

    invoke-direct {p0, v0, v9, v5}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    const-string v10, "ThumbnailImageWidth"

    invoke-direct {p0, v0, v10, v6}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v7, v8}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v9, v5}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v10, v6}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, v8, v7}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, v5, v9}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, v6, v10}, Landroid/media/ExifInterface;->replaceInvalidTags(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v3, v2

    new-array v3, v3, [I

    array-length v2, v2

    new-array v2, v2, [I

    sget-object v4, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    array-length v5, v4

    const/4 v7, 0x0

    :goto_10
    if-ge v7, v5, :cond_1c

    aget-object v8, v4, v7

    iget-object v9, v8, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-direct {v0, v9}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_1c
    iget-boolean v4, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const-string v5, "StripByteCounts"

    const-string v7, "JPEGInterchangeFormatLength"

    const-string v8, "StripOffsets"

    const-string v9, "JPEGInterchangeFormat"

    if-eqz v4, :cond_39

    iget-boolean v4, v0, Landroid/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v4, :cond_33

    invoke-direct {v0, v8}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    invoke-direct {v0, v5}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    goto :goto_39

    :cond_33
    invoke-direct {v0, v9}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    invoke-direct {v0, v7}, Landroid/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    :cond_39
    :goto_39
    const/4 v4, 0x0

    :goto_3a
    sget-object v10, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v10, v10

    if-ge v4, v10, :cond_6b

    iget-object v10, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, v4

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_4d
    if-ge v12, v11, :cond_68

    aget-object v13, v10, v12

    move-object v14, v13

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_65

    iget-object v15, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v15, v15, v4

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_65
    add-int/lit8 v12, v12, 0x1

    goto :goto_4d

    :cond_68
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    :cond_6b
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    const-wide/16 v10, 0x0

    if-nez v4, :cond_8c

    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v12, 0x0

    aget-object v4, v4, v12

    sget-object v12, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v12, v12, v6

    iget-object v12, v12, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v13, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v10, v11, v13}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8c
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v12, 0x2

    aget-object v4, v4, v12

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_ab

    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x0

    aget-object v4, v4, v13

    sget-object v13, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v13, v13, v12

    iget-object v13, v13, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v14, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v10, v11, v14}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ab
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v13, 0x3

    aget-object v4, v4, v13

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c9

    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v6

    sget-object v14, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v14, v14, v13

    iget-object v14, v14, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v15, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v10, v11, v15}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c9
    iget-boolean v4, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const/4 v14, 0x4

    if-eqz v4, :cond_10d

    iget-boolean v4, v0, Landroid/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v4, :cond_f0

    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v14

    iget-object v7, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    const/4 v15, 0x0

    invoke-static {v15, v7}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    invoke-virtual {v4, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v14

    iget v7, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    iget-object v15, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v7, v15}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10d

    :cond_f0
    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v14

    iget-object v5, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v10, v11, v5}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v5

    invoke-virtual {v4, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v14

    iget v5, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    int-to-long v10, v5

    iget-object v5, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v10, v11, v5}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10d
    :goto_10d
    const/4 v4, 0x0

    :goto_10e
    sget-object v5, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v5, v5

    if-ge v4, v5, :cond_142

    const/4 v5, 0x0

    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_120
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/ExifInterface$ExifAttribute;

    invoke-virtual {v11}, Landroid/media/ExifInterface$ExifAttribute;->size()I

    move-result v15

    if-le v15, v14, :cond_139

    add-int/2addr v5, v15

    :cond_139
    goto :goto_120

    :cond_13a
    aget v7, v2, v4

    add-int/2addr v7, v5

    aput v7, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_10e

    :cond_142
    const/16 v4, 0x8

    const/4 v5, 0x0

    :goto_145
    sget-object v7, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v7, v7

    if-ge v5, v7, :cond_169

    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_166

    aput v4, v3, v5

    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    mul-int/lit8 v7, v7, 0xc

    add-int/2addr v7, v12

    add-int/2addr v7, v14

    aget v10, v2, v5

    add-int/2addr v7, v10

    add-int/2addr v4, v7

    :cond_166
    add-int/lit8 v5, v5, 0x1

    goto :goto_145

    :cond_169
    iget-boolean v5, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v5, :cond_196

    move v5, v4

    iget-boolean v7, v0, Landroid/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v7, :cond_180

    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v14

    iget-object v9, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v5, v9}, Landroid/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18e

    :cond_180
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v14

    int-to-long v10, v5

    iget-object v8, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v10, v11, v8}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_18e
    iget v7, v0, Landroid/media/ExifInterface;->mExifOffset:I

    add-int/2addr v7, v5

    iput v7, v0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    iget v7, v0, Landroid/media/ExifInterface;->mThumbnailLength:I

    add-int/2addr v4, v7

    :cond_196
    move v5, v4

    iget v7, v0, Landroid/media/ExifInterface;->mMimeType:I

    if-ne v7, v14, :cond_19d

    add-int/lit8 v5, v5, 0x8

    :cond_19d
    sget-boolean v7, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v7, :cond_1e3

    const/4 v7, 0x0

    :goto_1a2
    sget-object v8, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v8, v8

    if-ge v7, v8, :cond_1e3

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    aget v9, v3, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    iget-object v9, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    aget v9, v2, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v14

    const-string v9, "index: %d, offsets: %d, tag count: %d, data sizes: %d, total size: %d"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ExifInterface"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x1

    goto :goto_1a2

    :cond_1e3
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_204

    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    sget-object v8, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v8, v8, v6

    iget-object v8, v8, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v9, v3, v6

    int-to-long v9, v9

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v9, v10, v11}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_204
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v12

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_225

    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    sget-object v8, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v8, v8, v12

    iget-object v8, v8, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v9, v3, v12

    int-to-long v9, v9

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v9, v10, v11}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_225
    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v13

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_245

    iget-object v7, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    sget-object v8, Landroid/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroid/media/ExifInterface$ExifTag;

    aget-object v8, v8, v13

    iget-object v8, v8, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v9, v3, v13

    int-to-long v9, v9

    iget-object v11, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v9, v10, v11}, Landroid/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_245
    iget v7, v0, Landroid/media/ExifInterface;->mMimeType:I

    sparse-switch v7, :sswitch_data_384

    goto :goto_266

    :sswitch_24b
    sget-object v7, Landroid/media/ExifInterface;->WEBP_CHUNK_TYPE_EXIF:[B

    invoke-virtual {v1, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    goto :goto_266

    :sswitch_254
    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    sget-object v7, Landroid/media/ExifInterface;->PNG_CHUNK_TYPE_EXIF:[B

    invoke-virtual {v1, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    goto :goto_266

    :sswitch_25d
    invoke-virtual {v1, v5}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    sget-object v7, Landroid/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-virtual {v1, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    nop

    :goto_266
    iget-object v7, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v7, v8, :cond_26f

    const/16 v7, 0x4d4d

    goto :goto_271

    :cond_26f
    const/16 v7, 0x4949

    :goto_271
    invoke-virtual {v1, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeShort(S)V

    iget-object v7, v0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    const/16 v7, 0x2a

    invoke-virtual {v1, v7}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    const-wide/16 v7, 0x8

    invoke-virtual {v1, v7, v8}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    const/4 v7, 0x0

    :goto_284
    sget-object v8, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v8, v8

    if-ge v7, v8, :cond_363

    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_35a

    iget-object v8, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    aget v8, v3, v7

    add-int/2addr v8, v12

    iget-object v9, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    mul-int/lit8 v9, v9, 0xc

    add-int/2addr v8, v9

    add-int/2addr v8, v14

    iget-object v9, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2b9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_311

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    sget-object v11, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v11, v11, v7

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/ExifInterface$ExifTag;

    iget v13, v11, Landroid/media/ExifInterface$ExifTag;->number:I

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/ExifInterface$ExifAttribute;

    invoke-virtual {v15}, Landroid/media/ExifInterface$ExifAttribute;->size()I

    move-result v12

    invoke-virtual {v1, v13}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    iget v6, v15, Landroid/media/ExifInterface$ExifAttribute;->format:I

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    iget v6, v15, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    if-le v12, v14, :cond_2f6

    move-object/from16 v16, v15

    int-to-long v14, v8

    invoke-virtual {v1, v14, v15}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    add-int/2addr v8, v12

    goto :goto_30d

    :cond_2f6
    move-object/from16 v16, v15

    move-object/from16 v14, v16

    iget-object v15, v14, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-virtual {v1, v15}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    const/4 v6, 0x4

    if-ge v12, v6, :cond_30d

    move v15, v12

    :goto_303
    if-ge v15, v6, :cond_30d

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x4

    goto :goto_303

    :cond_30d
    :goto_30d
    const/4 v6, 0x1

    const/4 v12, 0x2

    const/4 v14, 0x4

    goto :goto_2b9

    :cond_311
    if-nez v7, :cond_327

    iget-object v6, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v9, 0x4

    aget-object v6, v6, v9

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_327

    aget v10, v3, v9

    int-to-long v9, v10

    invoke-virtual {v1, v9, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    const-wide/16 v9, 0x0

    goto :goto_32c

    :cond_327
    const-wide/16 v9, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    :goto_32c
    iget-object v11, v0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v11, v11, v7

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_338
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_35c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v14, v13, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v14, v14

    const/4 v6, 0x4

    if-le v14, v6, :cond_359

    iget-object v14, v13, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    iget-object v15, v13, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v15, v15

    const/4 v6, 0x0

    invoke-virtual {v1, v14, v6, v15}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    :cond_359
    goto :goto_338

    :cond_35a
    const-wide/16 v9, 0x0

    :cond_35c
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x1

    const/4 v12, 0x2

    const/4 v14, 0x4

    goto/16 :goto_284

    :cond_363
    iget-boolean v6, v0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v6, :cond_36e

    invoke-virtual/range {p0 .. p0}, Landroid/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    :cond_36e
    iget v6, v0, Landroid/media/ExifInterface;->mMimeType:I

    const/16 v7, 0xe

    if-ne v6, v7, :cond_37d

    rem-int/lit8 v6, v5, 0x2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_37d

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    :cond_37d
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v6}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    return v5

    nop

    :sswitch_data_384
    .sparse-switch
        0x4 -> :sswitch_25d
        0xd -> :sswitch_254
        0xe -> :sswitch_24b
    .end sparse-switch
.end method


# virtual methods
.method public getAltitude(D)D
    .registers 9

    const-string v0, "GPSAltitude"

    const-wide/high16 v1, -0x4010000000000000L  # -1.0

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v0

    const-string v2, "GPSAltitudeRef"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_1f

    if-ltz v2, :cond_1f

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1b

    goto :goto_1c

    :cond_1b
    move v3, v4

    :goto_1c
    int-to-double v3, v3

    mul-double/2addr v3, v0

    return-wide v3

    :cond_1f
    return-wide p1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    if-eqz p1, :cond_89

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_88

    sget-object v2, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_18
    const-string v2, "GPSTimeStamp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    iget v2, v0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2c

    iget v2, v0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2c

    return-object v1

    :cond_2c
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v2}, Landroid/media/ExifInterface$ExifAttribute;->-$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/ExifInterface$Rational;

    array-length v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_39

    return-object v1

    :cond_39
    new-array v1, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    iget-wide v4, v4, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-float v4, v4

    aget-object v5, v2, v3

    iget-wide v5, v5, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aget-object v4, v2, v3

    iget-wide v4, v4, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-float v4, v4

    aget-object v5, v2, v3

    iget-wide v5, v5, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    aget-object v4, v2, v3

    iget-wide v4, v4, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-float v4, v4

    aget-object v5, v2, v3

    iget-wide v5, v5, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "%02d:%02d:%02d"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_7b
    :try_start_7b
    iget-object v2, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1
    :try_end_85
    .catch Ljava/lang/NumberFormatException; {:try_start_7b .. :try_end_85} :catch_86

    return-object v1

    :catch_86
    move-exception v2

    return-object v1

    :cond_88
    return-object v1

    :cond_89
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeBytes(Ljava/lang/String;)[B
    .registers 4

    if-eqz p1, :cond_d

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v1, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    return-object v1

    :cond_b
    const/4 v1, 0x0

    return-object v1

    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeDouble(Ljava/lang/String;D)D
    .registers 7

    if-eqz p1, :cond_12

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    if-nez v0, :cond_9

    return-wide p2

    :cond_9
    :try_start_9
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide v1
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_f} :catch_10

    return-wide v1

    :catch_10
    move-exception v1

    return-wide p2

    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeInt(Ljava/lang/String;I)I
    .registers 5

    if-eqz p1, :cond_12

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    if-nez v0, :cond_9

    return p2

    :cond_9
    :try_start_9
    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_f} :catch_10

    return v1

    :catch_10
    move-exception v1

    return p2

    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeRange(Ljava/lang/String;)[J
    .registers 7

    if-eqz p1, :cond_26

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mModified:Z

    if-nez v0, :cond_1e

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x2

    new-array v1, v1, [J

    const/4 v2, 0x0

    iget-wide v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytesOffset:J

    aput-wide v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v3, v3

    int-to-long v3, v3

    aput-wide v3, v1, v2

    return-object v1

    :cond_1c
    const/4 v1, 0x0

    return-object v1

    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The underlying file has been modified since being parsed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDateTime()J
    .registers 4

    const-string v0, "DateTime"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubSecTime"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OffsetTime"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface;->parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateTimeDigitized()J
    .registers 4

    const-string v0, "DateTimeDigitized"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubSecTimeDigitized"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OffsetTimeDigitized"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface;->parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateTimeOriginal()J
    .registers 4

    const-string v0, "DateTimeOriginal"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubSecTimeOriginal"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OffsetTimeOriginal"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/media/ExifInterface;->parseDateTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGpsDateTime()J
    .registers 9

    const-string v0, "GPSDateStamp"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPSTimeStamp"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_5d

    if-eqz v1, :cond_5d

    sget-object v4, Landroid/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_29

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_29

    goto :goto_5d

    :cond_29
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/text/ParsePosition;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/text/ParsePosition;-><init>(I)V

    :try_start_46
    sget-object v6, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    monitor-enter v6
    :try_end_49
    .catch Ljava/lang/IllegalArgumentException; {:try_start_46 .. :try_end_49} :catch_5b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_46 .. :try_end_49} :catch_5b

    :try_start_49
    sget-object v7, Landroid/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v7

    monitor-exit v6
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_58

    if-nez v7, :cond_53

    return-wide v2

    :cond_53
    :try_start_53
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v2
    :try_end_57
    .catch Ljava/lang/IllegalArgumentException; {:try_start_53 .. :try_end_57} :catch_5b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_53 .. :try_end_57} :catch_5b

    return-wide v2

    :catchall_58
    move-exception v7

    :try_start_59
    monitor-exit v6
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    :try_start_5a
    throw v7
    :try_end_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5a .. :try_end_5b} :catch_5b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5a .. :try_end_5b} :catch_5b

    :catch_5b
    move-exception v6

    return-wide v2

    :cond_5d
    :goto_5d
    return-wide v2
.end method

.method public getLatLong([F)Z
    .registers 9

    const-string v0, "GPSLatitude"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPSLatitudeRef"

    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPSLongitude"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GPSLongitudeRef"

    invoke-virtual {p0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v0, :cond_30

    if-eqz v1, :cond_30

    if-eqz v2, :cond_30

    if-eqz v3, :cond_30

    :try_start_21
    invoke-static {v0, v1}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    aput v5, p1, v4

    invoke-static {v2, v3}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    const/4 v6, 0x1

    aput v5, p1, v6
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_2e} :catch_2f

    return v6

    :catch_2f
    move-exception v5

    :cond_30
    return v4
.end method

.method public getThumbnail()[B
    .registers 3

    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_b

    const/4 v1, 0x7

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    return-object v0

    :cond_b
    :goto_b
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .registers 9

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    if-nez v0, :cond_10

    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    iput-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    :cond_10
    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_76

    const/4 v2, 0x7

    if-ne v0, v2, :cond_19

    goto :goto_76

    :cond_19
    const/4 v2, 0x1

    if-ne v0, v2, :cond_75

    iget-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    new-array v0, v0, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_25
    array-length v5, v0

    if-ge v4, v5, :cond_45

    iget-object v5, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    mul-int/lit8 v6, v4, 0x3

    aget-byte v6, v5, v6

    shl-int/lit8 v6, v6, 0x10

    add-int/2addr v6, v3

    mul-int/lit8 v7, v4, 0x3

    add-int/2addr v7, v2

    aget-byte v7, v5, v7

    shl-int/lit8 v7, v7, 0x8

    add-int/2addr v6, v7

    mul-int/lit8 v7, v4, 0x3

    add-int/lit8 v7, v7, 0x2

    aget-byte v5, v5, v7

    add-int/2addr v6, v5

    aput v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_45
    iget-object v2, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v4, 0x4

    aget-object v2, v2, v4

    const-string v5, "ThumbnailImageLength"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ExifInterface$ExifAttribute;

    iget-object v5, p0, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v5, v4

    const-string v5, "ThumbnailImageWidth"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ExifInterface$ExifAttribute;

    if-eqz v2, :cond_75

    if-eqz v4, :cond_75

    iget-object v1, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v1}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    iget-object v5, p0, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Landroid/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v5, v1, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6

    :cond_75
    return-object v1

    :cond_76
    :goto_76
    iget-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    const/4 v1, 0x0

    iget v2, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailBytes()[B
    .registers 9

    const-string v0, "ExifInterface"

    iget-boolean v1, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return-object v2

    :cond_8
    iget-object v1, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    if-eqz v1, :cond_d

    return-object v1

    :cond_d
    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_f
    iget-object v4, p0, Landroid/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v4, :cond_2d

    move-object v1, v4

    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    goto :goto_50

    :cond_1e
    const-string v4, "Cannot read thumbnail from inputstream without mark/reset support"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_23} :catch_8e
    .catch Landroid/system/ErrnoException; {:try_start_f .. :try_end_23} :catch_8e
    .catchall {:try_start_f .. :try_end_23} :catchall_8c

    nop

    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v3, :cond_2c

    invoke-static {v3}, Landroid/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    :cond_2c
    return-object v2

    :cond_2d
    :try_start_2d
    iget-object v4, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v4, :cond_3a

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    goto :goto_50

    :cond_3a
    iget-object v4, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v4, :cond_50

    invoke-static {v4}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v4

    move-object v3, v4

    const-wide/16 v4, 0x0

    sget v6, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v3, v4, v5, v6}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v4

    :cond_50
    :goto_50
    if-eqz v1, :cond_86

    iget v4, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    iget v6, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_5b} :catch_8e
    .catch Landroid/system/ErrnoException; {:try_start_2d .. :try_end_5b} :catch_8e
    .catchall {:try_start_2d .. :try_end_5b} :catchall_8c

    int-to-long v6, v6

    cmp-long v4, v4, v6

    const-string v5, "Corrupted image"

    if-nez v4, :cond_80

    :try_start_62
    iget v4, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    new-array v4, v4, [B

    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    iget v7, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    if-ne v6, v7, :cond_7a

    iput-object v4, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_70} :catch_8e
    .catch Landroid/system/ErrnoException; {:try_start_62 .. :try_end_70} :catch_8e
    .catchall {:try_start_62 .. :try_end_70} :catchall_8c

    nop

    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v3, :cond_79

    invoke-static {v3}, Landroid/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    :cond_79
    return-object v4

    :cond_7a
    :try_start_7a
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_80
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_86
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4}, Ljava/io/FileNotFoundException;-><init>()V

    throw v4
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_8c} :catch_8e
    .catch Landroid/system/ErrnoException; {:try_start_7a .. :try_end_8c} :catch_8e
    .catchall {:try_start_7a .. :try_end_8c} :catchall_8c

    :catchall_8c
    move-exception v0

    goto :goto_9e

    :catch_8e
    move-exception v4

    :try_start_8f
    const-string v5, "Encountered exception while getting thumbnail"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_94
    .catchall {:try_start_8f .. :try_end_94} :catchall_8c

    nop

    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v3, :cond_9d

    invoke-static {v3}, Landroid/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    :cond_9d
    return-object v2

    :goto_9e
    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v3, :cond_a6

    invoke-static {v3}, Landroid/media/ExifInterfaceUtils;->closeFileDescriptor(Ljava/io/FileDescriptor;)V

    :cond_a6
    throw v0
.end method

.method public getThumbnailRange()[J
    .registers 5

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mModified:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    if-nez v0, :cond_12

    return-object v1

    :cond_12
    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    iget v2, p0, Landroid/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/media/ExifInterface;->mThumbnailLength:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    return-object v0

    :cond_22
    return-object v1

    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The underlying file has been modified since being parsed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasThumbnail()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    return v0
.end method

.method public isThumbnailCompressed()Z
    .registers 4

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget v0, p0, Landroid/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_10

    const/4 v2, 0x7

    if-ne v0, v2, :cond_f

    goto :goto_10

    :cond_f
    return v1

    :cond_10
    :goto_10
    const/4 v0, 0x1

    return v0
.end method

.method public saveAttributes()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/ExifInterface;->isSupportedFormatForSavingAttributes()Z

    move-result v0

    if-eqz v0, :cond_152

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mIsInputStream:Z

    if-nez v0, :cond_14a

    iget-object v0, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_14a

    :cond_12
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnailStrips:Z

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Landroid/media/ExifInterface;->mAreThumbnailStripsConsecutive:Z

    if-eqz v0, :cond_1f

    goto :goto_27

    :cond_1f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface does not support saving attributes when the image file has non-consecutive thumbnail strips"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    :goto_27
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/ExifInterface;->mModified:Z

    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v0

    iput-object v0, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_33
    const-string v3, "temp"

    const-string v4, "tmp"

    invoke-static {v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    move-object v2, v3

    iget-object v3, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_4b

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v6, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_5c

    :cond_4b
    iget-object v3, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v3, :cond_5c

    sget v6, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v3, v4, v5, v6}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v6, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v0, v3

    :cond_5c
    :goto_5c
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    invoke-static {v0, v1}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_65} :catch_13a
    .catchall {:try_start_33 .. :try_end_65} :catchall_138

    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    nop

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_6e
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v3

    iget-object v3, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v3, :cond_81

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v6, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_92

    :cond_81
    iget-object v3, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v3, :cond_92

    sget v6, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v3, v4, v5, v6}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v6, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v3

    :cond_92
    :goto_92
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_97} :catch_ee
    .catchall {:try_start_6e .. :try_end_97} :catchall_ec

    :try_start_97
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_9c
    .catchall {:try_start_97 .. :try_end_9c} :catchall_e2

    :try_start_9c
    iget v7, p0, Landroid/media/ExifInterface;->mMimeType:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_a5

    invoke-direct {p0, v3, v6}, Landroid/media/ExifInterface;->saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_c4

    :cond_a5
    const/16 v8, 0xd

    if-ne v7, v8, :cond_ad

    invoke-direct {p0, v3, v6}, Landroid/media/ExifInterface;->savePngAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_c4

    :cond_ad
    const/16 v8, 0xe

    if-ne v7, v8, :cond_b5

    invoke-direct {p0, v3, v6}, Landroid/media/ExifInterface;->saveWebpAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_c4

    :cond_b5
    const/4 v8, 0x3

    if-eq v7, v8, :cond_ba

    if-nez v7, :cond_c4

    :cond_ba
    new-instance v7, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v7, v6, v8}, Landroid/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    invoke-direct {p0, v7}, Landroid/media/ExifInterface;->writeExifSegment(Landroid/media/ExifInterface$ByteOrderedDataOutputStream;)I
    :try_end_c4
    .catchall {:try_start_9c .. :try_end_c4} :catchall_d8

    :cond_c4
    :goto_c4
    :try_start_c4
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c7
    .catchall {:try_start_c4 .. :try_end_c7} :catchall_e2

    :try_start_c7
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_ca} :catch_ee
    .catchall {:try_start_c7 .. :try_end_ca} :catchall_ec

    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    nop

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/ExifInterface;->mThumbnailBytes:[B

    return-void

    :catchall_d8
    move-exception v7

    :try_start_d9
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_dc
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_dd

    goto :goto_e1

    :catchall_dd
    move-exception v8

    :try_start_de
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e1
    throw v7
    :try_end_e2
    .catchall {:try_start_de .. :try_end_e2} :catchall_e2

    :catchall_e2
    move-exception v6

    :try_start_e3
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e6
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_e7

    goto :goto_eb

    :catchall_e7
    move-exception v7

    :try_start_e8
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_eb
    throw v6
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_ec} :catch_ee
    .catchall {:try_start_e8 .. :try_end_ec} :catchall_ec

    :catchall_ec
    move-exception v3

    goto :goto_12e

    :catch_ee
    move-exception v3

    :try_start_ef
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v6

    iget-object v6, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-nez v6, :cond_115

    iget-object v6, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;
    :try_end_fb
    .catchall {:try_start_ef .. :try_end_fb} :catchall_ec

    if-eqz v6, :cond_11d

    :try_start_fd
    sget v7, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v6, v4, v5, v7}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_102
    .catch Landroid/system/ErrnoException; {:try_start_fd .. :try_end_102} :catch_10c
    .catchall {:try_start_fd .. :try_end_102} :catchall_ec

    nop

    :try_start_103
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Landroid/media/ExifInterface;->mSeekableFileDescriptor:Ljava/io/FileDescriptor;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v4

    goto :goto_11d

    :catch_10c
    move-exception v4

    new-instance v5, Ljava/io/IOException;

    const-string v6, "Failed to save new file. Original file may be corrupted since error occurred while trying to restore it."

    invoke-direct {v5, v6, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_115
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    :cond_11d
    :goto_11d
    invoke-static {v0, v1}, Landroid/media/ExifInterfaceUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Failed to save new file"

    invoke-direct {v4, v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_12e
    .catchall {:try_start_103 .. :try_end_12e} :catchall_ec

    :goto_12e
    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v3

    :catchall_138
    move-exception v3

    goto :goto_143

    :catch_13a
    move-exception v3

    :try_start_13b
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Failed to copy original file to temp file"

    invoke-direct {v4, v5, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_143
    .catchall {:try_start_13b .. :try_end_143} :catchall_138

    :goto_143
    invoke-static {v0}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v1}, Landroid/media/ExifInterfaceUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v3

    :cond_14a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface does not support saving attributes for the current input."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_152
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface only supports saving attributes for JPEG, PNG, WebP, and DNG formats."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-eqz v2, :cond_394

    const/4 v0, 0x2

    const-string v4, "ExifInterface"

    const/4 v5, 0x1

    if-eqz v3, :cond_c8

    sget-object v6, Landroid/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c8

    const-string v6, "GPSTimeStamp"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, " : "

    const-string v8, "Invalid value for "

    if-eqz v6, :cond_8a

    sget-object v6, Landroid/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_4b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/1,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v6, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_c8

    :cond_8a
    :try_start_8a
    invoke-static/range {p2 .. p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v11, 0x40c3880000000000L  # 10000.0

    mul-double/2addr v11, v9

    double-to-long v11, v11

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, "/10000"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_a8
    .catch Ljava/lang/NumberFormatException; {:try_start_8a .. :try_end_a8} :catch_aa

    move-object v3, v6

    goto :goto_c8

    :catch_aa
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c8
    :goto_c8
    const/4 v6, 0x0

    :goto_c9
    sget-object v7, Landroid/media/ExifInterface;->EXIF_TAGS:[[Landroid/media/ExifInterface$ExifTag;

    array-length v7, v7

    if-ge v6, v7, :cond_393

    const/4 v7, 0x4

    if-ne v6, v7, :cond_db

    iget-boolean v7, v1, Landroid/media/ExifInterface;->mHasThumbnail:Z

    if-nez v7, :cond_db

    move/from16 v22, v5

    move/from16 v24, v6

    goto/16 :goto_38c

    :cond_db
    sget-object v7, Landroid/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_386

    if-nez v3, :cond_f4

    iget-object v8, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v6

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v22, v5

    move/from16 v24, v6

    goto/16 :goto_38c

    :cond_f4
    move-object v8, v7

    check-cast v8, Landroid/media/ExifInterface$ExifTag;

    invoke-static {v3}, Landroid/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v9

    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v10, v11, :cond_1e5

    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v10, v11, :cond_115

    goto/16 :goto_1e5

    :cond_115
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_136

    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v12, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-eq v10, v12, :cond_132

    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v12, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v10, v12, :cond_136

    :cond_132
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    goto/16 :goto_1e7

    :cond_136
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    if-eq v10, v5, :cond_1e2

    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v12, 0x7

    if-eq v10, v12, :cond_1e2

    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    if-ne v10, v0, :cond_145

    goto/16 :goto_1e2

    :cond_145
    sget-boolean v10, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v10, :cond_1dc

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Given tag ("

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ") value didn\'t match with one of expected formats: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Landroid/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v13, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    aget-object v13, v12, v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v13, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    const-string v14, ""

    const-string v15, ", "

    if-ne v13, v11, :cond_172

    move-object v0, v14

    goto :goto_187

    :cond_172
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v0, v8, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    aget-object v0, v12, v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_187
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " (guess: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-object v10, v12, v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v11, :cond_1aa

    goto :goto_1c5

    :cond_1aa
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v11, v12, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_1c5
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ")"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v22, v5

    move/from16 v24, v6

    goto/16 :goto_38c

    :cond_1dc
    move/from16 v22, v5

    move/from16 v24, v6

    goto/16 :goto_38c

    :cond_1e2
    :goto_1e2
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    goto :goto_1e7

    :cond_1e5
    :goto_1e5
    iget v10, v8, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    :goto_1e7
    const/4 v0, 0x0

    const-string v11, "/"

    const-string v12, ","

    packed-switch v10, :pswitch_data_39c

    :pswitch_1ef  #0x6, 0x8, 0xb
    move/from16 v22, v5

    move/from16 v24, v6

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    sget-boolean v0, Landroid/media/ExifInterface;->DEBUG:Z

    if-eqz v0, :cond_38c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data format isn\'t one of expected formats: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38c

    :pswitch_213  #0xc
    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v11, v0

    new-array v11, v11, [D

    const/4 v12, 0x0

    :goto_21b
    array-length v13, v0

    if-ge v12, v13, :cond_229

    aget-object v13, v0, v12

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    aput-wide v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_21b

    :cond_229
    iget-object v12, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v12, v12, v6

    iget-object v13, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v11, v13}, Landroid/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v13

    invoke-virtual {v12, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v22, v5

    move/from16 v24, v6

    goto/16 :goto_38c

    :pswitch_23c  #0xa
    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v13, v12

    new-array v13, v13, [Landroid/media/ExifInterface$Rational;

    const/4 v14, 0x0

    :goto_244
    array-length v15, v12

    if-ge v14, v15, :cond_275

    aget-object v15, v12, v14

    invoke-virtual {v15, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    new-instance v22, Landroid/media/ExifInterface$Rational;

    aget-object v16, v15, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    aget-object v16, v15, v5

    move/from16 v24, v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-long v5, v5

    const/16 v21, 0x0

    move-object/from16 v16, v22

    move-wide/from16 v17, v0

    move-wide/from16 v19, v5

    invoke-direct/range {v16 .. v21}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$Rational-IA;)V

    aput-object v22, v13, v14

    add-int/lit8 v14, v14, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move/from16 v6, v24

    goto :goto_244

    :cond_275
    move/from16 v24, v6

    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v24

    iget-object v5, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v13, v5}, Landroid/media/ExifInterface$ExifAttribute;->createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v22, 0x1

    goto/16 :goto_38c

    :pswitch_28a  #0x9
    move/from16 v24, v6

    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    new-array v5, v5, [I

    const/4 v6, 0x0

    :goto_294
    array-length v11, v0

    if-ge v6, v11, :cond_2a2

    aget-object v11, v0, v6

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_294

    :cond_2a2
    iget-object v6, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v24

    iget-object v11, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v5, v11}, Landroid/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v11

    invoke-virtual {v6, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v22, 0x1

    goto/16 :goto_38c

    :pswitch_2b3  #0x5
    move/from16 v24, v6

    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    new-array v5, v5, [Landroid/media/ExifInterface$Rational;

    const/4 v6, 0x0

    :goto_2bd
    array-length v12, v0

    if-ge v6, v12, :cond_2f1

    aget-object v12, v0, v6

    invoke-virtual {v12, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    new-instance v13, Landroid/media/ExifInterface$Rational;

    const/4 v14, 0x0

    aget-object v15, v12, v14

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    double-to-long v14, v14

    const/16 v22, 0x1

    aget-object v16, v12, v22

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-long v7, v7

    const/16 v21, 0x0

    move-object/from16 v16, v13

    move-wide/from16 v17, v14

    move-wide/from16 v19, v7

    invoke-direct/range {v16 .. v21}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$Rational-IA;)V

    aput-object v13, v5, v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v7, v23

    move-object/from16 v8, v25

    goto :goto_2bd

    :cond_2f1
    move-object/from16 v23, v7

    move-object/from16 v25, v8

    const/16 v22, 0x1

    iget-object v6, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v24

    iget-object v7, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v5, v7}, Landroid/media/ExifInterface$ExifAttribute;->createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_38c

    :pswitch_306  #0x4
    move/from16 v22, v5

    move/from16 v24, v6

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    new-array v5, v5, [J

    const/4 v6, 0x0

    :goto_316
    array-length v7, v0

    if-ge v6, v7, :cond_324

    aget-object v7, v0, v6

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_316

    :cond_324
    iget-object v6, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v24

    iget-object v7, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v5, v7}, Landroid/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38c

    :pswitch_332  #0x3
    move/from16 v22, v5

    move/from16 v24, v6

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    invoke-virtual {v3, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    new-array v5, v5, [I

    const/4 v6, 0x0

    :goto_342
    array-length v7, v0

    if-ge v6, v7, :cond_350

    aget-object v7, v0, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_342

    :cond_350
    iget-object v6, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v24

    iget-object v7, v1, Landroid/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v5, v7}, Landroid/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38c

    :pswitch_35e  #0x2, 0x7
    move/from16 v22, v5

    move/from16 v24, v6

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    iget-object v0, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v24

    invoke-static {v3}, Landroid/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38c

    :pswitch_372  #0x1
    move/from16 v22, v5

    move/from16 v24, v6

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    iget-object v0, v1, Landroid/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v24

    invoke-static {v3}, Landroid/media/ExifInterface$ExifAttribute;->createByte(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38c

    :cond_386
    move/from16 v22, v5

    move/from16 v24, v6

    move-object/from16 v23, v7

    :cond_38c
    :goto_38c
    add-int/lit8 v6, v24, 0x1

    move/from16 v5, v22

    const/4 v0, 0x2

    goto/16 :goto_c9

    :cond_393
    return-void

    :cond_394
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v4, "tag shouldn\'t be null"

    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_39c
    .packed-switch 0x1
        :pswitch_372  #00000001
        :pswitch_35e  #00000002
        :pswitch_332  #00000003
        :pswitch_306  #00000004
        :pswitch_2b3  #00000005
        :pswitch_1ef  #00000006
        :pswitch_35e  #00000007
        :pswitch_1ef  #00000008
        :pswitch_28a  #00000009
        :pswitch_23c  #0000000a
        :pswitch_1ef  #0000000b
        :pswitch_213  #0000000c
    .end packed-switch
.end method
