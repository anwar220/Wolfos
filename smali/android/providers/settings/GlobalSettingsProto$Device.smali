# classes3.dex

.class public final Landroid/providers/settings/GlobalSettingsProto$Device;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Device"
.end annotation


# static fields
.field public static final DEMO_MODE:J = 0x10b00000006L

.field public static final NAME:J = 0x10b00000001L

.field public static final POLICY_CONSTANTS:J = 0x10b00000005L

.field public static final PROVISIONED:J = 0x10b00000002L

.field public static final PROVISIONING_MOBILE_DATA_ENABLED:J = 0x10b00000003L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/GlobalSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/providers/settings/GlobalSettingsProto$Device;->this$0:Landroid/providers/settings/GlobalSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method