# classes3.dex

.class public final Landroid/providers/settings/SecureSettingsProto$EmergencyResponse;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SecureSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EmergencyResponse"
.end annotation


# static fields
.field public static final EMERGENCY_GESTURE_ENABLED:J = 0x10b00000003L

.field public static final EMERGENCY_GESTURE_SOUND_ENABLED:J = 0x10b00000004L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/SecureSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/SecureSettingsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/providers/settings/SecureSettingsProto$EmergencyResponse;->this$0:Landroid/providers/settings/SecureSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method