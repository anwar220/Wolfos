# classes.dex

.class public final Landroid/R$dimen;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dimen"
.end annotation


# static fields
.field public static final app_icon_size:I = 0x1050000

.field public static final config_restrictedIconSize:I = 0x1050007
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final dialog_min_width_major:I = 0x1050003

.field public static final dialog_min_width_minor:I = 0x1050004

.field public static final notification_large_icon_height:I = 0x1050006

.field public static final notification_large_icon_width:I = 0x1050005

.field public static final system_app_widget_background_radius:I = 0x1050008

.field public static final system_app_widget_inner_radius:I = 0x1050009

.field public static final thumbnail_height:I = 0x1050001

.field public static final thumbnail_width:I = 0x1050002


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
