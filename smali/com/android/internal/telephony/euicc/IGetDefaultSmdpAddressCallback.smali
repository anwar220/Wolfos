# classes4.dex

.class public interface abstract Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback$Stub;,
        Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.euicc.IGetDefaultSmdpAddressCallback"


# virtual methods
.method public abstract onComplete(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
