# classes4.dex

.class public interface abstract Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback$Stub;,
        Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.euicc.IGetEuiccInfo2Callback"


# virtual methods
.method public abstract onComplete(I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
