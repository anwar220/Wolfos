# classes2.dex

.class public final synthetic Landroid/hardware/usb/UsbOperationInternal$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/usb/UsbOperationInternal;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/usb/UsbOperationInternal;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/usb/UsbOperationInternal$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/usb/UsbOperationInternal;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/usb/UsbOperationInternal$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/usb/UsbOperationInternal;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbOperationInternal;->lambda$onOperationComplete$0$android-hardware-usb-UsbOperationInternal()V

    return-void
.end method
