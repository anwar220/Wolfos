# classes.dex

.class Landroid/hardware/SensorPrivacyManager$1;
.super Landroid/hardware/ISensorPrivacyListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorPrivacyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method constructor <init>(Landroid/hardware/SensorPrivacyManager;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/SensorPrivacyManager$1;->this$0:Landroid/hardware/SensorPrivacyManager;

    invoke-direct {p0}, Landroid/hardware/ISensorPrivacyListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onSensorPrivacyChanged$0(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;IIZ)V
    .registers 6

    new-instance v0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;-><init>(IIZLandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams-IA;)V

    invoke-interface {p0, v0}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;->onSensorPrivacyChanged(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;)V

    return-void
.end method


# virtual methods
.method public onSensorPrivacyChanged(IIZ)V
    .registers 9

    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager$1;->this$0:Landroid/hardware/SensorPrivacyManager;

    invoke-static {v0}, Landroid/hardware/SensorPrivacyManager;->-$$Nest$fgetmLock(Landroid/hardware/SensorPrivacyManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :goto_8
    :try_start_8
    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager$1;->this$0:Landroid/hardware/SensorPrivacyManager;

    invoke-static {v2}, Landroid/hardware/SensorPrivacyManager;->-$$Nest$fgetmToggleListeners(Landroid/hardware/SensorPrivacyManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_37

    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager$1;->this$0:Landroid/hardware/SensorPrivacyManager;

    invoke-static {v2}, Landroid/hardware/SensorPrivacyManager;->-$$Nest$fgetmToggleListeners(Landroid/hardware/SensorPrivacyManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    iget-object v3, p0, Landroid/hardware/SensorPrivacyManager$1;->this$0:Landroid/hardware/SensorPrivacyManager;

    invoke-static {v3}, Landroid/hardware/SensorPrivacyManager;->-$$Nest$fgetmToggleListeners(Landroid/hardware/SensorPrivacyManager;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/hardware/SensorPrivacyManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p1, p2, p3}, Landroid/hardware/SensorPrivacyManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;IIZ)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_37
    monitor-exit v0

    return-void

    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_39

    throw v1
.end method
