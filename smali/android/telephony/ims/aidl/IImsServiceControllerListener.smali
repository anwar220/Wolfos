# classes3.dex

.class public interface abstract Landroid/telephony/ims/aidl/IImsServiceControllerListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsServiceControllerListener$Stub;,
        Landroid/telephony/ims/aidl/IImsServiceControllerListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.telephony.ims.aidl.IImsServiceControllerListener"


# virtual methods
.method public abstract onUpdateSupportedImsFeatures(Landroid/telephony/ims/stub/ImsFeatureConfiguration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
