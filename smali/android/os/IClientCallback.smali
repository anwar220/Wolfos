# classes3.dex

.class public interface abstract Landroid/os/IClientCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IClientCallback$Stub;,
        Landroid/os/IClientCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.IClientCallback"


# virtual methods
.method public abstract onClients(Landroid/os/IBinder;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
