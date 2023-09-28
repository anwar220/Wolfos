# classes2.dex

.class public interface abstract Landroid/nfc/ITagRemovedCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/ITagRemovedCallback$Stub;,
        Landroid/nfc/ITagRemovedCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onTagRemoved()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
