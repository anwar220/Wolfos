# classes3.dex

.class public final Landroid/stats/mediametrics_message/MediametricsMessage$AudioPolicyData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/stats/mediametrics_message/MediametricsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioPolicyData"
.end annotation


# static fields
.field public static final ACTIVE_DEVICE:J = 0x10900000009L

.field public static final ACTIVE_PACKAGE:J = 0x10900000007L

.field public static final ACTIVE_SESSION:J = 0x10500000008L

.field public static final ACTIVE_SOURCE:J = 0x10900000006L

.field public static final REQUEST_DEVICE:J = 0x10900000005L

.field public static final REQUEST_PACKAGE:J = 0x10900000003L

.field public static final REQUEST_SESSION:J = 0x10500000004L

.field public static final REQUEST_SOURCE:J = 0x10900000002L

.field public static final STATUS:J = 0x10500000001L


# instance fields
.field final synthetic this$0:Landroid/stats/mediametrics_message/MediametricsMessage;


# direct methods
.method public constructor <init>(Landroid/stats/mediametrics_message/MediametricsMessage;)V
    .registers 2

    iput-object p1, p0, Landroid/stats/mediametrics_message/MediametricsMessage$AudioPolicyData;->this$0:Landroid/stats/mediametrics_message/MediametricsMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
