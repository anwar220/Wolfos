# classes3.dex

.class public interface abstract Landroid/print/IPrintServicesChangeListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrintServicesChangeListener$Stub;,
        Landroid/print/IPrintServicesChangeListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onPrintServicesChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
