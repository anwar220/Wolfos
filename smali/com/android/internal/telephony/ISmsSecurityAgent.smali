# classes4.dex

.class public interface abstract Lcom/android/internal/telephony/ISmsSecurityAgent;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISmsSecurityAgent$Stub;,
        Lcom/android/internal/telephony/ISmsSecurityAgent$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ISmsSecurityAgent"


# virtual methods
.method public abstract onAuthorize(Lcom/android/internal/telephony/SmsAuthorizationRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
