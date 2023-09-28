# classes4.dex

.class public interface abstract Lcom/android/internal/telephony/ISmsSecurityService;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISmsSecurityService$Stub;,
        Lcom/android/internal/telephony/ISmsSecurityService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ISmsSecurityService"


# virtual methods
.method public abstract register(Lcom/android/internal/telephony/ISmsSecurityAgent;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendResponse(Lcom/android/internal/telephony/SmsAuthorizationRequest;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregister(Lcom/android/internal/telephony/ISmsSecurityAgent;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
