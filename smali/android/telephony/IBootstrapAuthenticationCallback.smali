# classes3.dex

.class public interface abstract Landroid/telephony/IBootstrapAuthenticationCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/IBootstrapAuthenticationCallback$Stub;,
        Landroid/telephony/IBootstrapAuthenticationCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.telephony.IBootstrapAuthenticationCallback"


# virtual methods
.method public abstract onAuthenticationFailure(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onKeysAvailable(I[BLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
