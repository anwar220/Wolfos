# classes.dex

.class public final synthetic Landroid/hardware/camera2/utils/TaskDrainer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/camera2/utils/TaskDrainer;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/camera2/utils/TaskDrainer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/utils/TaskDrainer$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/camera2/utils/TaskDrainer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/utils/TaskDrainer$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/camera2/utils/TaskDrainer;

    invoke-virtual {v0}, Landroid/hardware/camera2/utils/TaskDrainer;->lambda$postDrained$0$android-hardware-camera2-utils-TaskDrainer()V

    return-void
.end method
