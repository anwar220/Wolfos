# classes.dex

.class Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->setRemoteInjectionSession(Landroid/hardware/camera2/ICameraInjectionSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->-$$Nest$fgetmInjectionStatusCallback(Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;)Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;->onInjectionSucceeded(Landroid/hardware/camera2/CameraInjectionSession;)V

    return-void
.end method
