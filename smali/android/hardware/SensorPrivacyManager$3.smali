# classes.dex

.class Landroid/hardware/SensorPrivacyManager$3;
.super Landroid/hardware/ISensorPrivacyListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/SensorPrivacyManager;->addAllSensorPrivacyListener(Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/SensorPrivacyManager;

.field final synthetic val$listener:Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;


# direct methods
.method constructor <init>(Landroid/hardware/SensorPrivacyManager;Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;)V
    .registers 3

    iput-object p1, p0, Landroid/hardware/SensorPrivacyManager$3;->this$0:Landroid/hardware/SensorPrivacyManager;

    iput-object p2, p0, Landroid/hardware/SensorPrivacyManager$3;->val$listener:Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;

    invoke-direct {p0}, Landroid/hardware/ISensorPrivacyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSensorPrivacyChanged(IIZ)V
    .registers 5

    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager$3;->val$listener:Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;

    invoke-interface {v0, p3}, Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;->onAllSensorPrivacyChanged(Z)V

    return-void
.end method
