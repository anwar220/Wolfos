# classes2.dex

.class final Landroid/hardware/input/InputManager$InputDevicesChangedListener;
.super Landroid/hardware/input/IInputDevicesChangedListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputDevicesChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/input/InputManager;


# direct methods
.method private constructor <init>(Landroid/hardware/input/InputManager;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/input/InputManager$InputDevicesChangedListener;->this$0:Landroid/hardware/input/InputManager;

    invoke-direct {p0}, Landroid/hardware/input/IInputDevicesChangedListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/input/InputManager;Landroid/hardware/input/InputManager$InputDevicesChangedListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager$InputDevicesChangedListener;-><init>(Landroid/hardware/input/InputManager;)V

    return-void
.end method


# virtual methods
.method public onInputDevicesChanged([I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/input/InputManager$InputDevicesChangedListener;->this$0:Landroid/hardware/input/InputManager;

    invoke-static {v0, p1}, Landroid/hardware/input/InputManager;->-$$Nest$monInputDevicesChanged(Landroid/hardware/input/InputManager;[I)V

    return-void
.end method