# classes3.dex

.class public interface abstract Landroid/service/vr/IPersistentVrStateCallbacks;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/vr/IPersistentVrStateCallbacks$Stub;,
        Landroid/service/vr/IPersistentVrStateCallbacks$Default;
    }
.end annotation


# virtual methods
.method public abstract onPersistentVrStateChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
