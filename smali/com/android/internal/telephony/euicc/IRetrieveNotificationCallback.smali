# classes4.dex

.class public interface abstract Lcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/IRetrieveNotificationCallback$Stub;,
        Lcom/android/internal/telephony/euicc/IRetrieveNotificationCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.euicc.IRetrieveNotificationCallback"


# virtual methods
.method public abstract onComplete(ILandroid/telephony/euicc/EuiccNotification;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
