# classes2.dex

.class final Landroid/hardware/input/InputManager$TabletModeChangedListener;
.super Landroid/hardware/input/ITabletModeChangedListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TabletModeChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/input/InputManager;


# direct methods
.method private constructor <init>(Landroid/hardware/input/InputManager;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/input/InputManager$TabletModeChangedListener;->this$0:Landroid/hardware/input/InputManager;

    invoke-direct {p0}, Landroid/hardware/input/ITabletModeChangedListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/input/InputManager;Landroid/hardware/input/InputManager$TabletModeChangedListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager$TabletModeChangedListener;-><init>(Landroid/hardware/input/InputManager;)V

    return-void
.end method


# virtual methods
.method public onTabletModeChanged(JZ)V
    .registers 5

    iget-object v0, p0, Landroid/hardware/input/InputManager$TabletModeChangedListener;->this$0:Landroid/hardware/input/InputManager;

    invoke-static {v0, p1, p2, p3}, Landroid/hardware/input/InputManager;->-$$Nest$monTabletModeChanged(Landroid/hardware/input/InputManager;JZ)V

    return-void
.end method