# classes2.dex

.class public final synthetic Landroid/hardware/hdmi/HdmiControlManager$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/hdmi/HdmiControlManager$3$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;

    iput p2, p0, Landroid/hardware/hdmi/HdmiControlManager$3$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager$3$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;

    iget v1, p0, Landroid/hardware/hdmi/HdmiControlManager$3$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Landroid/hardware/hdmi/HdmiControlManager$3;->lambda$onHdmiCecVolumeControlFeature$0(Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;I)V

    return-void
.end method
