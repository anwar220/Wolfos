# classes2.dex

.class public interface abstract Landroid/media/ICommunicationDeviceDispatcher;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ICommunicationDeviceDispatcher$Stub;,
        Landroid/media/ICommunicationDeviceDispatcher$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.media.ICommunicationDeviceDispatcher"


# virtual methods
.method public abstract dispatchCommunicationDeviceChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
