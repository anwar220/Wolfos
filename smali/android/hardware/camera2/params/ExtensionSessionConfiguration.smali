# classes.dex

.class public final Landroid/hardware/camera2/params/ExtensionSessionConfiguration;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtensionSessionConfiguration"


# instance fields
.field private mCallback:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mExtensionType:I

.field private mOutputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$StateCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraExtensionSession$StateCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mCallback:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    iput p1, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mExtensionType:I

    iput-object p2, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mOutputs:Ljava/util/List;

    iput-object p3, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mCallback:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    return-void
.end method


# virtual methods
.method public getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getExtension()I
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mExtensionType:I

    return v0
.end method

.method public getOutputConfigurations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mOutputs:Ljava/util/List;

    return-object v0
.end method

.method public getStateCallback()Landroid/hardware/camera2/CameraExtensionSession$StateCallback;
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->mCallback:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    return-object v0
.end method
