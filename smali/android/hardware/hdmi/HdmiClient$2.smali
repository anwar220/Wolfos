# classes2.dex

.class Landroid/hardware/hdmi/HdmiClient$2;
.super Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/hdmi/HdmiClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;


# direct methods
.method constructor <init>(Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/hdmi/HdmiClient$2;->val$listener:Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onControlStateChanged(ZI)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient$2;->val$listener:Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;

    invoke-interface {v0, p1, p2}, Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;->onControlStateChanged(ZI)V

    return-void
.end method

.method public onReceived(II[BZ)V
    .registers 6

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiClient$2;->val$listener:Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/hdmi/HdmiControlManager$VendorCommandListener;->onReceived(II[BZ)V

    return-void
.end method
