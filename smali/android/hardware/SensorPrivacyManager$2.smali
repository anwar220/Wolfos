# classes.dex

.class Landroid/hardware/SensorPrivacyManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(ILjava/util/concurrent/Executor;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/SensorPrivacyManager;

.field final synthetic val$listener:Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

.field final synthetic val$sensor:I


# direct methods
.method constructor <init>(Landroid/hardware/SensorPrivacyManager;ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .registers 4

    iput-object p1, p0, Landroid/hardware/SensorPrivacyManager$2;->this$0:Landroid/hardware/SensorPrivacyManager;

    iput p2, p0, Landroid/hardware/SensorPrivacyManager$2;->val$sensor:I

    iput-object p3, p0, Landroid/hardware/SensorPrivacyManager$2;->val$listener:Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSensorPrivacyChanged(IZ)V
    .registers 3

    return-void
.end method

.method public onSensorPrivacyChanged(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;)V
    .registers 5

    invoke-virtual {p1}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->getSensor()I

    move-result v0

    iget v1, p0, Landroid/hardware/SensorPrivacyManager$2;->val$sensor:I

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager$2;->val$listener:Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    invoke-virtual {p1}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->getSensor()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;->isEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;->onSensorPrivacyChanged(IZ)V

    :cond_15
    return-void
.end method
