# classes4.dex

.class public interface abstract Lcom/android/net/IProxyPortListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/net/IProxyPortListener$Stub;,
        Lcom/android/net/IProxyPortListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.net.IProxyPortListener"


# virtual methods
.method public abstract setProxyPort(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
