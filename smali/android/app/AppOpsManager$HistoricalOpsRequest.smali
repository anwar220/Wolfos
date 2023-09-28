# classes.dex

.class public final Landroid/app/AppOpsManager$HistoricalOpsRequest;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoricalOpsRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$HistoricalOpsRequest$Builder;
    }
.end annotation


# instance fields
.field private final mAttributionTag:Ljava/lang/String;

.field private final mBeginTimeMillis:J

.field private final mEndTimeMillis:J

.field private final mFilter:I

.field private final mFlags:I

.field private final mHistoryFlags:I

.field private final mOpNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;

.field private final mUid:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAttributionTag(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mAttributionTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBeginTimeMillis(Landroid/app/AppOpsManager$HistoricalOpsRequest;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mBeginTimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmEndTimeMillis(Landroid/app/AppOpsManager$HistoricalOpsRequest;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mEndTimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmFilter(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I
    .registers 1

    iget p0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mFilter:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFlags(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I
    .registers 1

    iget p0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mFlags:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHistoryFlags(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I
    .registers 1

    iget p0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mHistoryFlags:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOpNames(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mOpNames:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageName(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUid(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I
    .registers 1

    iget p0, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mUid:I

    return p0
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJI)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIJJI)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mUid:I

    iput-object p2, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mAttributionTag:Ljava/lang/String;

    iput-object p4, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mOpNames:Ljava/util/List;

    iput p5, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mHistoryFlags:I

    iput p6, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mFilter:I

    iput-wide p7, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mBeginTimeMillis:J

    iput-wide p9, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mEndTimeMillis:J

    iput p11, p0, Landroid/app/AppOpsManager$HistoricalOpsRequest;->mFlags:I

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/app/AppOpsManager$HistoricalOpsRequest-IA;)V
    .registers 13

    invoke-direct/range {p0 .. p11}, Landroid/app/AppOpsManager$HistoricalOpsRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJI)V

    return-void
.end method
