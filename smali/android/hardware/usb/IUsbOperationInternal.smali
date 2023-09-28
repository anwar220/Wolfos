# classes2.dex

.class public interface abstract Landroid/hardware/usb/IUsbOperationInternal;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/IUsbOperationInternal$Stub;,
        Landroid/hardware/usb/IUsbOperationInternal$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.usb.IUsbOperationInternal"


# virtual methods
.method public abstract onOperationComplete(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
