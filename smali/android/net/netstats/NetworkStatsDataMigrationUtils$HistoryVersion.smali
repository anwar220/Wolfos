# classes2.dex

.class Landroid/net/netstats/NetworkStatsDataMigrationUtils$HistoryVersion;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/netstats/NetworkStatsDataMigrationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HistoryVersion"
.end annotation


# static fields
.field static final VERSION_ADD_ACTIVE:I = 0x3

.field static final VERSION_ADD_PACKETS:I = 0x2

.field static final VERSION_INIT:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
