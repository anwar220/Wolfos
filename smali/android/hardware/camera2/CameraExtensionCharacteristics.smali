# classes.dex

.class public final Landroid/hardware/camera2/CameraExtensionCharacteristics;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;,
        Landroid/hardware/camera2/CameraExtensionCharacteristics$Extension;
    }
.end annotation


# static fields
.field public static final EXTENSION_AUTOMATIC:I = 0x0

.field public static final EXTENSION_BEAUTY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTENSION_BOKEH:I = 0x2

.field public static final EXTENSION_FACE_RETOUCH:I = 0x1

.field public static final EXTENSION_HDR:I = 0x3

.field private static final EXTENSION_LIST:[I

.field public static final EXTENSION_NIGHT:I = 0x4

.field public static final NON_PROCESSING_INPUT_FORMAT:I = 0x22

.field public static final PROCESSING_INPUT_FORMAT:I = 0x23

.field private static final TAG:Ljava/lang/String; = "CameraExtensionCharacteristics"


# instance fields
.field private final mCameraId:Ljava/lang/String;

.field private final mChars:Landroid/hardware/camera2/CameraCharacteristics;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->EXTENSION_LIST:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iput-object p3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    return-void
.end method

.method public static areAdvancedExtensionsSupported()Z
    .registers 1

    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->areAdvancedExtensionsSupported()Z

    move-result v0

    return v0
.end method

.method private static generateJpegSupportedSizes(Ljava/util/List;Landroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/SizeList;",
            ">;",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getSupportedSizes(Ljava/util/List;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1e

    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_23

    :cond_1e
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_23
    move-object v0, v2

    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x100

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->retainAll(Ljava/util/Collection;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v3
.end method

.method private static generateSupportedSizes(Ljava/util/List;Ljava/lang/Integer;Landroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/SizeList;",
            ">;",
            "Ljava/lang/Integer;",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getSupportedSizes(Ljava/util/List;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    if-eqz v1, :cond_1b

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1b
    return-object v0
.end method

.method private static getSupportedSizes(Ljava/util/List;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/SizeList;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_4e

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4e

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/SizeList;

    iget v3, v2, Landroid/hardware/camera2/extension/SizeList;->format:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_4d

    iget-object v3, v2, Landroid/hardware/camera2/extension/SizeList;->sizes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4d

    iget-object v1, v2, Landroid/hardware/camera2/extension/SizeList;->sizes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/extension/Size;

    new-instance v4, Landroid/util/Size;

    iget v5, v3, Landroid/hardware/camera2/extension/Size;->width:I

    iget v6, v3, Landroid/hardware/camera2/extension/Size;->height:I

    invoke-direct {v4, v5, v6}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_4c
    return-object v0

    :cond_4d
    goto :goto_11

    :cond_4e
    return-object v0
.end method

.method public static initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_25

    nop

    if-eqz v0, :cond_c

    return-object v0

    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown extension: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_25
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to initialize extension: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static initializeExtension(I)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/extension/IPreviewExtenderImpl;",
            "Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->initializePreviewExtension(I)Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    move-result-object v0

    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->initializeImageExtension(I)Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_34

    nop

    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1b

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_1b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown extension: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_34
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to initialize extension: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static initializeSession(Landroid/hardware/camera2/extension/IInitializeSessionCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->initializeSession(Landroid/hardware/camera2/extension/IInitializeSessionCallback;)V

    return-void
.end method

.method public static isExtensionSupported(Ljava/lang/String;ILandroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 9

    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported()Z

    move-result v0

    const-string v1, "Failed to query extension availability! Extension service does not respond!"

    const-string v2, "CameraExtensionCharacteristics"

    const/4 v3, 0x0

    if-eqz v0, :cond_19

    :try_start_b
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->isExtensionAvailable(Ljava/lang/String;)Z

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_13} :catch_14

    return v1

    :catch_14
    move-exception v0

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_19
    :try_start_19
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_1d} :catch_43

    nop

    :try_start_1e
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-virtual {p2}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    invoke-interface {v4, p0, v5}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->isExtensionAvailable(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)Z

    move-result v4

    if-eqz v4, :cond_3c

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-virtual {p2}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    invoke-interface {v4, p0, v5}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->isExtensionAvailable(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)Z

    move-result v1
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_38} :catch_3e

    if-eqz v1, :cond_3c

    const/4 v3, 0x1

    goto :goto_3d

    :cond_3c
    nop

    :goto_3d
    return v3

    :catch_3e
    move-exception v4

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catch_43
    move-exception v0

    return v3
.end method

.method private static isOutputSupportedFor(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    const-string v0, "klass must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Landroid/graphics/SurfaceTexture;

    if-ne p0, v0, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static registerClient(Landroid/content/Context;)J
    .registers 3

    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->registerClient(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static releaseSession()V
    .registers 1

    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->releaseSession()V

    return-void
.end method

.method public static unregisterClient(J)V
    .registers 3

    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->unregisterClient(J)V

    return-void
.end method


# virtual methods
.method public getAvailableCaptureRequestKeys(I)Ljava/util/Set;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_c9

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :try_start_11
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v3, p1, v4}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILandroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v3

    if-eqz v3, :cond_b2

    const/4 v3, 0x0

    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->init(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->getAvailableCaptureRequestKeys(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    move-object v3, v5

    goto :goto_66

    :cond_33
    nop

    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v4

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v7}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->onInit(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v7}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v5}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getAvailableCaptureRequestKeys()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    move-object v3, v5

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v5}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->onDeInit()V

    :goto_66
    if-eqz v3, :cond_8f

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_REQUEST_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    if-eqz v4, :cond_87

    new-instance v5, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v5, v3}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    const-class v6, Landroid/hardware/camera2/CaptureRequest$Key;

    move-object v7, v6

    check-cast v7, Ljava/lang/Class;

    const-class v8, Landroid/hardware/camera2/CaptureRequest;

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v7, v4, v9}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableKeyList(Ljava/lang/Class;Ljava/lang/Class;[IZ)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_8f

    :cond_87
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "android.request.availableRequestKeys must be non-null in the characteristics"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    :cond_8f
    :goto_8f
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9c

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9c
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a9

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_a9
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_a9} :catch_bc
    .catchall {:try_start_11 .. :try_end_a9} :catchall_ba

    :cond_a9
    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    nop

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    return-object v3

    :cond_b2
    :try_start_b2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported extension"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_b2 .. :try_end_ba} :catch_bc
    .catchall {:try_start_b2 .. :try_end_ba} :catchall_ba

    :catchall_ba
    move-exception v3

    goto :goto_c5

    :catch_bc
    move-exception v3

    :try_start_bd
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Failed to query the available capture request keys!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_c5
    .catchall {:try_start_bd .. :try_end_c5} :catchall_ba

    :goto_c5
    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    throw v3

    :cond_c9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extensions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAvailableCaptureResultKeys(I)Ljava/util/Set;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_d6

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :try_start_11
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v3, p1, v4}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILandroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v3

    if-eqz v3, :cond_bf

    const/4 v3, 0x0

    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->init(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->getAvailableCaptureResultKeys(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    move-object v3, v5

    goto :goto_66

    :cond_33
    nop

    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v4

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v7}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->onInit(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v7}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v5}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getAvailableCaptureResultKeys()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    move-object v3, v5

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v5}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->onDeInit()V

    :goto_66
    if-eqz v3, :cond_b6

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_RESULT_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    if-eqz v4, :cond_ae

    new-instance v5, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v5, v3}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    const-class v6, Landroid/hardware/camera2/CaptureResult$Key;

    move-object v7, v6

    check-cast v7, Ljava/lang/Class;

    const-class v8, Landroid/hardware/camera2/CaptureResult;

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v7, v4, v9}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableKeyList(Ljava/lang/Class;Ljava/lang/Class;[IZ)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_93

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_93
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a0

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a0
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b6

    sget-object v8, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_b6

    :cond_ae
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "android.request.availableResultKeys must be non-null in the characteristics"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
    :try_end_b6
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_b6} :catch_c9
    .catchall {:try_start_11 .. :try_end_b6} :catchall_c7

    :cond_b6
    :goto_b6
    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    nop

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    return-object v3

    :cond_bf
    :try_start_bf
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported extension"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_c7
    .catch Landroid/os/RemoteException; {:try_start_bf .. :try_end_c7} :catch_c9
    .catchall {:try_start_bf .. :try_end_c7} :catchall_c7

    :catchall_c7
    move-exception v3

    goto :goto_d2

    :catch_c9
    move-exception v3

    :try_start_ca
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Failed to query the available capture result keys!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_d2
    .catchall {:try_start_ca .. :try_end_d2} :catchall_c7

    :goto_d2
    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    throw v3

    :cond_d6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extensions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getEstimatedCaptureLatencyRangeMillis(ILandroid/util/Size;I)Landroid/util/Range;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Size;",
            "I)",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    sparse-switch p3, :sswitch_data_f0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1c
    nop

    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_e8

    const/4 v2, 0x0

    :try_start_2a
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v3, p1, v4}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILandroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v3

    if-eqz v3, :cond_cc

    new-instance v3, Landroid/hardware/camera2/extension/Size;

    invoke-direct {v3}, Landroid/hardware/camera2/extension/Size;-><init>()V

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/hardware/camera2/extension/Size;->width:I

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/hardware/camera2/extension/Size;->height:I

    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported()Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->init(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v4, v5, v3, p3}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->getEstimatedCaptureLatencyRange(Ljava/lang/String;Landroid/hardware/camera2/extension/Size;I)Landroid/hardware/camera2/extension/LatencyRange;

    move-result-object v5

    if-eqz v5, :cond_71

    new-instance v6, Landroid/util/Range;

    iget-wide v7, v5, Landroid/hardware/camera2/extension/LatencyRange;->min:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v8, v5, Landroid/hardware/camera2/extension/LatencyRange;->max:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_6d} :catch_d6
    .catchall {:try_start_2a .. :try_end_6d} :catchall_d4

    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    return-object v6

    :cond_71
    goto :goto_cb

    :cond_72
    nop

    :try_start_73
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v4

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v7}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    const/16 v5, 0x23

    if-ne p3, v5, :cond_99

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v5}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getCaptureProcessor()Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    move-result-object v5
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_92} :catch_d6
    .catchall {:try_start_73 .. :try_end_92} :catchall_d4

    if-nez v5, :cond_99

    nop

    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    return-object v2

    :cond_99
    const/16 v5, 0x100

    if-ne p3, v5, :cond_ac

    :try_start_9d
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v5}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getCaptureProcessor()Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    move-result-object v5
    :try_end_a5
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_a5} :catch_d6
    .catchall {:try_start_9d .. :try_end_a5} :catchall_d4

    if-eqz v5, :cond_ac

    nop

    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    return-object v2

    :cond_ac
    :try_start_ac
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v5, v3}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getEstimatedCaptureLatencyRange(Landroid/hardware/camera2/extension/Size;)Landroid/hardware/camera2/extension/LatencyRange;

    move-result-object v5

    if-eqz v5, :cond_cb

    new-instance v6, Landroid/util/Range;

    iget-wide v7, v5, Landroid/hardware/camera2/extension/LatencyRange;->min:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v8, v5, Landroid/hardware/camera2/extension/LatencyRange;->max:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    :try_end_c7
    .catch Landroid/os/RemoteException; {:try_start_ac .. :try_end_c7} :catch_d6
    .catchall {:try_start_ac .. :try_end_c7} :catchall_d4

    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    return-object v6

    :cond_cb
    :goto_cb
    goto :goto_df

    :cond_cc
    :try_start_cc
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported extension"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_d4
    .catch Landroid/os/RemoteException; {:try_start_cc .. :try_end_d4} :catch_d6
    .catchall {:try_start_cc .. :try_end_d4} :catchall_d4

    :catchall_d4
    move-exception v2

    goto :goto_e4

    :catch_d6
    move-exception v3

    :try_start_d7
    const-string v4, "CameraExtensionCharacteristics"

    const-string v5, "Failed to query the extension capture latency! Extension service does not respond!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_de
    .catchall {:try_start_d7 .. :try_end_de} :catchall_d4

    nop

    :goto_df
    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    nop

    return-object v2

    :goto_e4
    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    throw v2

    :cond_e8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extensions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_data_f0
    .sparse-switch
        0x23 -> :sswitch_1c
        0x100 -> :sswitch_1c
    .end sparse-switch
.end method

.method public getExtensionSupportedSizes(II)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;)J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_10a

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_102

    :try_start_c
    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v2, p1, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILandroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v2

    if-eqz v2, :cond_f4

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported()Z

    move-result v3
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_fc

    const-string v4, "Unsupported format: "

    if-eqz v3, :cond_5f

    sparse-switch p2, :sswitch_data_118

    :try_start_2b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    goto :goto_4a

    :sswitch_2e
    nop

    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->init(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->getSupportedCaptureOutputResolutions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->generateSupportedSizes(Ljava/util/List;Ljava/lang/Integer;Landroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;

    move-result-object v4
    :try_end_46
    .catchall {:try_start_2b .. :try_end_46} :catchall_fc

    :try_start_46
    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_49} :catch_10a

    return-object v4

    :goto_4a
    :try_start_4a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5f
    const/16 v3, 0x23

    if-ne p2, v3, :cond_9e

    nop

    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v3

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v6}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v4}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getCaptureProcessor()Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    move-result-object v4

    if-nez v4, :cond_8a

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_86
    .catchall {:try_start_4a .. :try_end_86} :catchall_fc

    :try_start_86
    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_89} :catch_10a

    return-object v4

    :cond_8a
    :try_start_8a
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v4}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getSupportedResolutions()Ljava/util/List;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->generateSupportedSizes(Ljava/util/List;Ljava/lang/Integer;Landroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;

    move-result-object v4
    :try_end_9a
    .catchall {:try_start_8a .. :try_end_9a} :catchall_fc

    :try_start_9a
    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_9d} :catch_10a

    return-object v4

    :cond_9e
    const/16 v3, 0x100

    if-ne p2, v3, :cond_dd

    nop

    :try_start_a3
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v3

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v6}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v4}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getCaptureProcessor()Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    move-result-object v4

    if-eqz v4, :cond_d0

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v4}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getSupportedResolutions()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->generateJpegSupportedSizes(Ljava/util/List;Landroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;

    move-result-object v4
    :try_end_cc
    .catchall {:try_start_a3 .. :try_end_cc} :catchall_fc

    :try_start_cc
    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V
    :try_end_cf
    .catch Landroid/os/RemoteException; {:try_start_cc .. :try_end_cf} :catch_10a

    return-object v4

    :cond_d0
    const/4 v4, 0x0

    :try_start_d1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->generateSupportedSizes(Ljava/util/List;Ljava/lang/Integer;Landroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;

    move-result-object v4
    :try_end_d9
    .catchall {:try_start_d1 .. :try_end_d9} :catchall_fc

    :try_start_d9
    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V
    :try_end_dc
    .catch Landroid/os/RemoteException; {:try_start_d9 .. :try_end_dc} :catch_10a

    return-object v4

    :cond_dd
    :try_start_dd
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_f4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extension"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_fc
    .catchall {:try_start_dd .. :try_end_fc} :catchall_fc

    :catchall_fc
    move-exception v2

    :try_start_fd
    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    nop

    throw v2

    :cond_102
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extensions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_10a
    .catch Landroid/os/RemoteException; {:try_start_fd .. :try_end_10a} :catch_10a

    :catch_10a
    move-exception v0

    const-string v1, "CameraExtensionCharacteristics"

    const-string v2, "Failed to query the extension supported sizes! Extension service does not respond!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    :sswitch_data_118
    .sparse-switch
        0x23 -> :sswitch_2e
        0x100 -> :sswitch_2e
    .end sparse-switch
.end method

.method public getExtensionSupportedSizes(ILjava/lang/Class;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isOutputSupportedFor(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_c
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_96

    :try_start_18
    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v2, p1, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILandroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v2

    if-eqz v2, :cond_77

    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported()Z

    move-result v3

    const/16 v4, 0x22

    if-eqz v3, :cond_4f

    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v3

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v3, v5}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->init(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v3, v5}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->getSupportedPreviewOutputResolutions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v4, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->generateSupportedSizes(Ljava/util/List;Ljava/lang/Integer;Landroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;

    move-result-object v4
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_4b} :catch_81
    .catchall {:try_start_18 .. :try_end_4b} :catchall_7f

    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    return-object v4

    :cond_4f
    nop

    :try_start_50
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v3

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v7}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-interface {v5}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->getSupportedResolutions()Ljava/util/List;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v4, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->generateSupportedSizes(Ljava/util/List;Ljava/lang/Integer;Landroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;

    move-result-object v4
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_73} :catch_81
    .catchall {:try_start_50 .. :try_end_73} :catchall_7f

    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    return-object v4

    :cond_77
    :try_start_77
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extension"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_7f} :catch_81
    .catchall {:try_start_77 .. :try_end_7f} :catchall_7f

    :catchall_7f
    move-exception v2

    goto :goto_92

    :catch_81
    move-exception v2

    :try_start_82
    const-string v3, "CameraExtensionCharacteristics"

    const-string v4, "Failed to query the extension supported sizes! Extension service does not respond!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_8e
    .catchall {:try_start_82 .. :try_end_8e} :catchall_7f

    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    return-object v3

    :goto_92
    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    throw v2

    :cond_96
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extensions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getSupportedExtensions()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_16

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3

    :cond_16
    :try_start_16
    sget-object v3, Landroid/hardware/camera2/CameraExtensionCharacteristics;->EXTENSION_LIST:[I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1a
    if-ge v5, v4, :cond_32

    aget v6, v3, v5

    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v8, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v7, v6, v8}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILandroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v7

    if-eqz v7, :cond_2f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catchall {:try_start_16 .. :try_end_2f} :catchall_3b

    :cond_2f
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_32
    invoke-static {v1, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    nop

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3

    :catchall_3b
    move-exception v3

    invoke-static {v1, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    throw v3
.end method
