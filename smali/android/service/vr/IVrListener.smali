# classes3.dex

.class public interface abstract Landroid/service/vr/IVrListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/vr/IVrListener$Stub;,
        Landroid/service/vr/IVrListener$Default;
    }
.end annotation


# virtual methods
.method public abstract focusedActivityChanged(Landroid/content/ComponentName;ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
