# classes3.dex

.class public interface abstract Landroid/telephony/gba/IGbaService;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/gba/IGbaService$Stub;,
        Landroid/telephony/gba/IGbaService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.telephony.gba.IGbaService"


# virtual methods
.method public abstract authenticationRequest(Landroid/telephony/gba/GbaAuthRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
