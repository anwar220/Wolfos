# classes3.dex

.class public interface abstract Landroid/telephony/ims/aidl/IOptionsRequestCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IOptionsRequestCallback$Stub;,
        Landroid/telephony/ims/aidl/IOptionsRequestCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.telephony.ims.aidl.IOptionsRequestCallback"


# virtual methods
.method public abstract respondToCapabilityRequest(Landroid/telephony/ims/RcsContactUceCapability;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract respondToCapabilityRequestWithError(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
