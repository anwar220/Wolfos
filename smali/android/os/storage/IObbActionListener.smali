# classes3.dex

.class public interface abstract Landroid/os/storage/IObbActionListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IObbActionListener$Stub;,
        Landroid/os/storage/IObbActionListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onObbResult(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method