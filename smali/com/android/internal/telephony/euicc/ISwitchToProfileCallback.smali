# classes4.dex

.class public interface abstract Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback$Stub;,
        Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.euicc.ISwitchToProfileCallback"


# virtual methods
.method public abstract onComplete(ILandroid/service/euicc/EuiccProfileInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
