# classes2.dex

.class public interface abstract Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener$Stub;,
        Landroid/net/vcn/IVcnUnderlyingNetworkPolicyListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.net.vcn.IVcnUnderlyingNetworkPolicyListener"


# virtual methods
.method public abstract onPolicyChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
