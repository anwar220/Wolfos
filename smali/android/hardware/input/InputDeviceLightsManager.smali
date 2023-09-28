# classes2.dex

.class Landroid/hardware/input/InputDeviceLightsManager;
.super Landroid/hardware/lights/LightsManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "InputDeviceLightsManager"


# instance fields
.field private final mDeviceId:I

.field private final mInputManager:Landroid/hardware/input/InputManager;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDeviceId(Landroid/hardware/input/InputDeviceLightsManager;)I
    .registers 1

    iget p0, p0, Landroid/hardware/input/InputDeviceLightsManager;->mDeviceId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInputManager(Landroid/hardware/input/InputDeviceLightsManager;)Landroid/hardware/input/InputManager;
    .registers 1

    iget-object p0, p0, Landroid/hardware/input/InputDeviceLightsManager;->mInputManager:Landroid/hardware/input/InputManager;

    return-object p0
.end method

.method constructor <init>(Landroid/hardware/input/InputManager;I)V
    .registers 4

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/lights/LightsManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/hardware/input/InputDeviceLightsManager;->mInputManager:Landroid/hardware/input/InputManager;

    iput p2, p0, Landroid/hardware/input/InputDeviceLightsManager;->mDeviceId:I

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/InputDeviceLightsManager;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLightState(Landroid/hardware/lights/Light;)Landroid/hardware/lights/LightState;
    .registers 4

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/input/InputDeviceLightsManager;->mInputManager:Landroid/hardware/input/InputManager;

    iget v1, p0, Landroid/hardware/input/InputDeviceLightsManager;->mDeviceId:I

    invoke-virtual {v0, v1, p1}, Landroid/hardware/input/InputManager;->getLightState(ILandroid/hardware/lights/Light;)Landroid/hardware/lights/LightState;

    move-result-object v0

    return-object v0
.end method

.method public getLights()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/lights/Light;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/input/InputDeviceLightsManager;->mInputManager:Landroid/hardware/input/InputManager;

    iget v1, p0, Landroid/hardware/input/InputDeviceLightsManager;->mDeviceId:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getLights(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public openSession()Landroid/hardware/lights/LightsManager$LightsSession;
    .registers 6

    new-instance v0, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;-><init>(Landroid/hardware/input/InputDeviceLightsManager;Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession-IA;)V

    iget-object v1, p0, Landroid/hardware/input/InputDeviceLightsManager;->mInputManager:Landroid/hardware/input/InputManager;

    iget v2, p0, Landroid/hardware/input/InputDeviceLightsManager;->mDeviceId:I

    iget-object v3, p0, Landroid/hardware/input/InputDeviceLightsManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/lights/LightsManager$LightsSession;->getToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/input/InputManager;->openLightSession(ILjava/lang/String;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public openSession(I)Landroid/hardware/lights/LightsManager$LightsSession;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
