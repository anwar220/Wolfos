# classes.dex

.class public final synthetic Landroid/hardware/face/FaceManager$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/face/FaceManager$LockoutResetCallback;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/face/FaceManager$LockoutResetCallback;ILandroid/os/PowerManager$WakeLock;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/face/FaceManager$2$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/face/FaceManager$LockoutResetCallback;

    iput p2, p0, Landroid/hardware/face/FaceManager$2$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Landroid/hardware/face/FaceManager$2$$ExternalSyntheticLambda0;->f$2:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/hardware/face/FaceManager$2$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/face/FaceManager$LockoutResetCallback;

    iget v1, p0, Landroid/hardware/face/FaceManager$2$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Landroid/hardware/face/FaceManager$2$$ExternalSyntheticLambda0;->f$2:Landroid/os/PowerManager$WakeLock;

    invoke-static {v0, v1, v2}, Landroid/hardware/face/FaceManager$2;->lambda$onLockoutReset$0(Landroid/hardware/face/FaceManager$LockoutResetCallback;ILandroid/os/PowerManager$WakeLock;)V

    return-void
.end method
