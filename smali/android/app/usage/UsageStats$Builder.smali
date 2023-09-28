# classes.dex

.class public final Landroid/app/usage/UsageStats$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/UsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mUsageStats:Landroid/app/usage/UsageStats;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/usage/UsageStats;

    invoke-direct {v0}, Landroid/app/usage/UsageStats;-><init>()V

    iput-object v0, p0, Landroid/app/usage/UsageStats$Builder;->mUsageStats:Landroid/app/usage/UsageStats;

    return-void
.end method


# virtual methods
.method public build()Landroid/app/usage/UsageStats;
    .registers 2

    iget-object v0, p0, Landroid/app/usage/UsageStats$Builder;->mUsageStats:Landroid/app/usage/UsageStats;

    return-object v0
.end method

.method public setFirstTimeStamp(J)Landroid/app/usage/UsageStats$Builder;
    .registers 4

    iget-object v0, p0, Landroid/app/usage/UsageStats$Builder;->mUsageStats:Landroid/app/usage/UsageStats;

    iput-wide p1, v0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    return-object p0
.end method

.method public setLastTimeStamp(J)Landroid/app/usage/UsageStats$Builder;
    .registers 4

    iget-object v0, p0, Landroid/app/usage/UsageStats$Builder;->mUsageStats:Landroid/app/usage/UsageStats;

    iput-wide p1, v0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    return-object p0
.end method

.method public setLastTimeUsed(J)Landroid/app/usage/UsageStats$Builder;
    .registers 4

    iget-object v0, p0, Landroid/app/usage/UsageStats$Builder;->mUsageStats:Landroid/app/usage/UsageStats;

    iput-wide p1, v0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Landroid/app/usage/UsageStats$Builder;
    .registers 3

    iget-object v0, p0, Landroid/app/usage/UsageStats$Builder;->mUsageStats:Landroid/app/usage/UsageStats;

    iput-object p1, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setTotalTimeInForeground(J)Landroid/app/usage/UsageStats$Builder;
    .registers 4

    iget-object v0, p0, Landroid/app/usage/UsageStats$Builder;->mUsageStats:Landroid/app/usage/UsageStats;

    iput-wide p1, v0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    return-object p0
.end method
