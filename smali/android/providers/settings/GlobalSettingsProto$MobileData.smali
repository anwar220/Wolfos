# classes3.dex

.class public final Landroid/providers/settings/GlobalSettingsProto$MobileData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MobileData"
.end annotation


# static fields
.field public static final ALLOWED:J = 0x10b00000001L

.field public static final ALWAYS_ON:J = 0x10b00000002L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/GlobalSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/providers/settings/GlobalSettingsProto$MobileData;->this$0:Landroid/providers/settings/GlobalSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
