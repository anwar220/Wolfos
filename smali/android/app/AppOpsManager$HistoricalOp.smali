# classes.dex

.class public final Landroid/app/AppOpsManager$HistoricalOp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoricalOp"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$HistoricalOp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccessCount:Landroid/util/LongSparseLongArray;

.field private mAccessDuration:Landroid/util/LongSparseLongArray;

.field private mDiscreteAccesses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mOp:I

.field private mRejectCount:Landroid/util/LongSparseLongArray;


# direct methods
.method public static synthetic $r8$lambda$OUA9xAFEAUOmX0xqYdgRAgXt2mQ(Landroid/app/AppOpsManager$HistoricalOp;)Landroid/util/LongSparseLongArray;
    .registers 1

    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalOp;->getOrCreateAccessCount()Landroid/util/LongSparseLongArray;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QifjQFAnZOz-6XnQfyLNXH5dbFI(Landroid/app/AppOpsManager$HistoricalOp;)Landroid/util/LongSparseLongArray;
    .registers 1

    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalOp;->getOrCreateAccessDuration()Landroid/util/LongSparseLongArray;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$X3SR0gwvndg4V3R8EETJBbVxjAo(Landroid/app/AppOpsManager$HistoricalOp;)Landroid/util/LongSparseLongArray;
    .registers 1

    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalOp;->getOrCreateRejectCount()Landroid/util/LongSparseLongArray;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maccept(Landroid/app/AppOpsManager$HistoricalOp;Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalOp;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddDiscreteAccess(Landroid/app/AppOpsManager$HistoricalOp;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Landroid/app/AppOpsManager$HistoricalOp;->addDiscreteAccess(IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfilter(Landroid/app/AppOpsManager$HistoricalOp;IDJJ)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Landroid/app/AppOpsManager$HistoricalOp;->filter(IDJJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mincreaseAccessCount(Landroid/app/AppOpsManager$HistoricalOp;IIJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/AppOpsManager$HistoricalOp;->increaseAccessCount(IIJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mincreaseAccessDuration(Landroid/app/AppOpsManager$HistoricalOp;IIJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/AppOpsManager$HistoricalOp;->increaseAccessDuration(IIJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mincreaseRejectCount(Landroid/app/AppOpsManager$HistoricalOp;IIJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/AppOpsManager$HistoricalOp;->increaseRejectCount(IIJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misEmpty(Landroid/app/AppOpsManager$HistoricalOp;)Z
    .registers 1

    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalOp;->isEmpty()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmerge(Landroid/app/AppOpsManager$HistoricalOp;Landroid/app/AppOpsManager$HistoricalOp;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalOp;->merge(Landroid/app/AppOpsManager$HistoricalOp;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msplice(Landroid/app/AppOpsManager$HistoricalOp;D)Landroid/app/AppOpsManager$HistoricalOp;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/AppOpsManager$HistoricalOp;->splice(D)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/AppOpsManager$HistoricalOp$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$HistoricalOp$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$HistoricalOp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    return-void
.end method

.method private constructor <init>(Landroid/app/AppOpsManager$HistoricalOp;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    iget-object v0, p1, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    :cond_11
    iget-object v0, p1, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    :cond_1b
    iget-object v0, p1, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    :cond_25
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOp;->getDiscreteAccessCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_2a
    if-ge v1, v0, :cond_40

    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$HistoricalOp;->getDiscreteAccessAt(I)Landroid/app/AppOpsManager$AttributedOpEntry;

    move-result-object v2

    new-instance v3, Landroid/app/AppOpsManager$AttributedOpEntry;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/app/AppOpsManager$AttributedOpEntry;-><init>(Landroid/app/AppOpsManager$AttributedOpEntry;Landroid/app/AppOpsManager$AttributedOpEntry-IA;)V

    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalOp;->getOrCreateDiscreteAccesses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_40
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/AppOpsManager$HistoricalOp;Landroid/app/AppOpsManager$HistoricalOp-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalOp;-><init>(Landroid/app/AppOpsManager$HistoricalOp;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    invoke-static {p1}, Landroid/app/AppOpsManager;->-$$Nest$smreadLongSparseLongArrayFromParcel(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    invoke-static {p1}, Landroid/app/AppOpsManager;->-$$Nest$smreadLongSparseLongArrayFromParcel(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    invoke-static {p1}, Landroid/app/AppOpsManager;->-$$Nest$smreadLongSparseLongArrayFromParcel(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    invoke-static {p1}, Landroid/app/AppOpsManager;->-$$Nest$smreadDiscreteAccessArrayFromParcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/AppOpsManager$HistoricalOp-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalOp;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .registers 2

    invoke-interface {p1, p0}, Landroid/app/AppOpsManager$HistoricalOpsVisitor;->visitHistoricalOp(Landroid/app/AppOpsManager$HistoricalOp;)V

    return-void
.end method

.method private addDiscreteAccess(IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .registers 21

    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalOp;->getOrCreateDiscreteAccesses()Ljava/util/List;

    move-result-object v6

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    move-object v7, v0

    invoke-static {p1, p2}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v8

    new-instance v10, Landroid/app/AppOpsManager$NoteOpEvent;

    move-object v0, v10

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager$NoteOpEvent;-><init>(JJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    invoke-virtual {v7, v8, v9, v0}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    new-instance v1, Landroid/app/AppOpsManager$AttributedOpEntry;

    move-object v2, p0

    iget v3, v2, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v7, v5}, Landroid/app/AppOpsManager$AttributedOpEntry;-><init>(IZLandroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    :goto_2d
    const/16 v10, 0x1f

    if-ltz v3, :cond_43

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-virtual {v11, v10}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v11

    cmp-long v11, v11, p3

    if-gez v11, :cond_40

    goto :goto_43

    :cond_40
    add-int/lit8 v3, v3, -0x1

    goto :goto_2d

    :cond_43
    :goto_43
    add-int/2addr v3, v5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_71

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-virtual {v11, v10}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v10

    cmp-long v10, v10, p3

    if-nez v10, :cond_71

    const/4 v10, 0x2

    new-array v10, v10, [Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$AttributedOpEntry;

    aput-object v11, v10, v4

    aput-object v1, v10, v5

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Landroid/app/AppOpsManager;->-$$Nest$smmergeAttributedOpEntries(Ljava/util/List;)Landroid/app/AppOpsManager$AttributedOpEntry;

    move-result-object v4

    invoke-interface {v6, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_74

    :cond_71
    invoke-interface {v6, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_74
    return-void
.end method

.method private filter(IDJJ)V
    .registers 16

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-nez v0, :cond_c

    iput-object v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    iput-object v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    iput-object v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    goto :goto_1b

    :cond_c
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p2, p3}, Landroid/app/AppOpsManager$HistoricalOp;->scale(Landroid/util/LongSparseLongArray;D)V

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p2, p3}, Landroid/app/AppOpsManager$HistoricalOp;->scale(Landroid/util/LongSparseLongArray;D)V

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p2, p3}, Landroid/app/AppOpsManager$HistoricalOp;->scale(Landroid/util/LongSparseLongArray;D)V

    :goto_1b
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_22

    iput-object v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    return-void

    :cond_22
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOp;->getDiscreteAccessCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_28
    if-ltz v1, :cond_51

    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$AttributedOpEntry;

    const/16 v3, 0x1f

    invoke-virtual {v2, v3}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v4

    invoke-virtual {v2, v3}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(I)J

    move-result-wide v6

    add-long/2addr v6, v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v6

    cmp-long v3, v6, p4

    if-ltz v3, :cond_49

    cmp-long v3, v4, p6

    if-lez v3, :cond_4e

    :cond_49
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4e
    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    :cond_51
    return-void
.end method

.method private getOrCreateAccessCount()Landroid/util/LongSparseLongArray;
    .registers 2

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    :cond_b
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    return-object v0
.end method

.method private getOrCreateAccessDuration()Landroid/util/LongSparseLongArray;
    .registers 2

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    :cond_b
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    return-object v0
.end method

.method private getOrCreateDiscreteAccesses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    return-object v0
.end method

.method private getOrCreateRejectCount()Landroid/util/LongSparseLongArray;
    .registers 2

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    :cond_b
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    return-object v0
.end method

.method private hasData(Landroid/util/LongSparseLongArray;)Z
    .registers 3

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private increaseAccessCount(IIJ)V
    .registers 11

    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalOp;->getOrCreateAccessCount()Landroid/util/LongSparseLongArray;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager$HistoricalOp;->increaseCount(Landroid/util/LongSparseLongArray;IIJ)V

    return-void
.end method

.method private increaseAccessDuration(IIJ)V
    .registers 11

    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalOp;->getOrCreateAccessDuration()Landroid/util/LongSparseLongArray;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager$HistoricalOp;->increaseCount(Landroid/util/LongSparseLongArray;IIJ)V

    return-void
.end method

.method private increaseCount(Landroid/util/LongSparseLongArray;IIJ)V
    .registers 11

    :goto_0
    if-eqz p3, :cond_17

    const/4 v0, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    shl-int/2addr v0, v1

    not-int v1, v0

    and-int/2addr p3, v1

    invoke-static {p2, v0}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/util/LongSparseLongArray;->get(J)J

    move-result-wide v3

    add-long/2addr v3, p4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    goto :goto_0

    :cond_17
    return-void
.end method

.method private increaseRejectCount(IIJ)V
    .registers 11

    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalOp;->getOrCreateRejectCount()Landroid/util/LongSparseLongArray;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/AppOpsManager$HistoricalOp;->increaseCount(Landroid/util/LongSparseLongArray;IIJ)V

    return-void
.end method

.method private isEmpty()Z
    .registers 2

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    invoke-direct {p0, v0}, Landroid/app/AppOpsManager$HistoricalOp;->hasData(Landroid/util/LongSparseLongArray;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    invoke-direct {p0, v0}, Landroid/app/AppOpsManager$HistoricalOp;->hasData(Landroid/util/LongSparseLongArray;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    invoke-direct {p0, v0}, Landroid/app/AppOpsManager$HistoricalOp;->hasData(Landroid/util/LongSparseLongArray;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method private merge(Landroid/app/AppOpsManager$HistoricalOp;)V
    .registers 11

    new-instance v0, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda0;-><init>(Landroid/app/AppOpsManager$HistoricalOp;)V

    iget-object v1, p1, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    invoke-static {v0, v1}, Landroid/app/AppOpsManager$HistoricalOp;->merge(Ljava/util/function/Supplier;Landroid/util/LongSparseLongArray;)V

    new-instance v0, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda1;-><init>(Landroid/app/AppOpsManager$HistoricalOp;)V

    iget-object v1, p1, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    invoke-static {v0, v1}, Landroid/app/AppOpsManager$HistoricalOp;->merge(Ljava/util/function/Supplier;Landroid/util/LongSparseLongArray;)V

    new-instance v0, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda2;-><init>(Landroid/app/AppOpsManager$HistoricalOp;)V

    iget-object v1, p1, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    invoke-static {v0, v1}, Landroid/app/AppOpsManager$HistoricalOp;->merge(Ljava/util/function/Supplier;Landroid/util/LongSparseLongArray;)V

    iget-object v0, p1, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    if-nez v0, :cond_23

    return-void

    :cond_23
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    if-nez v0, :cond_31

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    return-void

    :cond_31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOp;->getDiscreteAccessCount()I

    move-result v1

    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOp;->getDiscreteAccessCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_40
    if-lt v3, v1, :cond_4c

    if-ge v4, v2, :cond_45

    goto :goto_4c

    :cond_45
    invoke-static {v0}, Landroid/app/AppOpsManager;->-$$Nest$smdeduplicateDiscreteEvents(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    return-void

    :cond_4c
    :goto_4c
    if-ne v3, v1, :cond_5d

    iget-object v5, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    add-int/lit8 v6, v4, 0x1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_40

    :cond_5d
    if-ne v4, v2, :cond_6e

    iget-object v5, p1, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_40

    :cond_6e
    iget-object v5, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$AttributedOpEntry;

    const/16 v6, 0x1f

    invoke-virtual {v5, v6}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v7

    iget-object v5, p1, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-virtual {v5, v6}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v5

    cmp-long v5, v7, v5

    if-gez v5, :cond_9b

    iget-object v5, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    add-int/lit8 v6, v4, 0x1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_40

    :cond_9b
    iget-object v5, p1, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_40
.end method

.method private static merge(Ljava/util/function/Supplier;Landroid/util/LongSparseLongArray;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/util/LongSparseLongArray;",
            ">;",
            "Landroid/util/LongSparseLongArray;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_22

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseLongArray;

    invoke-virtual {p1, v1}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {p1, v1}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v5

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseLongArray;->get(J)J

    move-result-wide v7

    add-long/2addr v7, v5

    invoke-virtual {v2, v3, v4, v7, v8}, Landroid/util/LongSparseLongArray;->put(JJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_22
    return-void
.end method

.method private static scale(Landroid/util/LongSparseLongArray;D)V
    .registers 9

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1e

    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v4, p1

    invoke-static {v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->round(D)D

    move-result-wide v4

    double-to-long v4, v4

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/util/LongSparseLongArray;->put(JJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1e
    return-void
.end method

.method private splice(D)Landroid/app/AppOpsManager$HistoricalOp;
    .registers 6

    new-instance v0, Landroid/app/AppOpsManager$HistoricalOp;

    iget v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    invoke-direct {v0, v1}, Landroid/app/AppOpsManager$HistoricalOp;-><init>(I)V

    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda0;-><init>(Landroid/app/AppOpsManager$HistoricalOp;)V

    invoke-static {v1, v2, p1, p2}, Landroid/app/AppOpsManager$HistoricalOp;->splice(Landroid/util/LongSparseLongArray;Ljava/util/function/Supplier;D)V

    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda1;-><init>(Landroid/app/AppOpsManager$HistoricalOp;)V

    invoke-static {v1, v2, p1, p2}, Landroid/app/AppOpsManager$HistoricalOp;->splice(Landroid/util/LongSparseLongArray;Ljava/util/function/Supplier;D)V

    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Landroid/app/AppOpsManager$HistoricalOp$$ExternalSyntheticLambda2;-><init>(Landroid/app/AppOpsManager$HistoricalOp;)V

    invoke-static {v1, v2, p1, p2}, Landroid/app/AppOpsManager$HistoricalOp;->splice(Landroid/util/LongSparseLongArray;Ljava/util/function/Supplier;D)V

    return-object v0
.end method

.method private static splice(Landroid/util/LongSparseLongArray;Ljava/util/function/Supplier;D)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseLongArray;",
            "Ljava/util/function/Supplier<",
            "Landroid/util/LongSparseLongArray;",
            ">;D)V"
        }
    .end annotation

    if-eqz p0, :cond_2e

    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2e

    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v4

    long-to-double v6, v4

    mul-double/2addr v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_2b

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/LongSparseLongArray;

    invoke-virtual {v8, v2, v3, v6, v7}, Landroid/util/LongSparseLongArray;->put(JJ)V

    sub-long v8, v4, v6

    invoke-virtual {p0, v2, v3, v8, v9}, Landroid/util/LongSparseLongArray;->put(JJ)V

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2e
    return-void
.end method


# virtual methods
.method public collectKeys()Landroid/util/LongSparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/AppOpsManager;->-$$Nest$smcollectKeys(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    invoke-static {v1, v0}, Landroid/app/AppOpsManager;->-$$Nest$smcollectKeys(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    invoke-static {v1, v0}, Landroid/app/AppOpsManager;->-$$Nest$smcollectKeys(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4f

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOp;

    iget v3, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    iget v4, v2, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    if-eq v3, v4, :cond_1c

    return v1

    :cond_1c
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    iget-object v4, v2, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    invoke-static {v3, v4}, Landroid/app/AppOpsManager;->-$$Nest$smequalsLongSparseLongArray(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;)Z

    move-result v3

    if-nez v3, :cond_27

    return v1

    :cond_27
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    iget-object v4, v2, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    invoke-static {v3, v4}, Landroid/app/AppOpsManager;->-$$Nest$smequalsLongSparseLongArray(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;)Z

    move-result v3

    if-nez v3, :cond_32

    return v1

    :cond_32
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    iget-object v4, v2, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    invoke-static {v3, v4}, Landroid/app/AppOpsManager;->-$$Nest$smequalsLongSparseLongArray(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;)Z

    move-result v3

    if-nez v3, :cond_3d

    return v1

    :cond_3d
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    if-nez v3, :cond_48

    iget-object v3, v2, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    if-nez v3, :cond_46

    goto :goto_4e

    :cond_46
    move v0, v1

    goto :goto_4e

    :cond_48
    iget-object v0, v2, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_4e
    return v0

    :cond_4f
    :goto_4f
    return v1
.end method

.method public getAccessCount(III)J
    .registers 6

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p1, p2, p3}, Landroid/app/AppOpsManager;->-$$Nest$smsumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAccessDuration(III)J
    .registers 6

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p1, p2, p3}, Landroid/app/AppOpsManager;->-$$Nest$smsumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBackgroundAccessCount(I)J
    .registers 5

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    iget v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v1

    const/16 v2, 0x2bc

    invoke-static {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->-$$Nest$smsumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBackgroundAccessDuration(I)J
    .registers 5

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    iget v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v1

    const/16 v2, 0x2bc

    invoke-static {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->-$$Nest$smsumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBackgroundDiscreteAccesses(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    iget v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v1

    const/16 v2, 0x2bc

    invoke-static {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->-$$Nest$smlistForFlagsInStates(Ljava/util/List;III)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundRejectCount(I)J
    .registers 5

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    iget v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->resolveLastRestrictedUidState(I)I

    move-result v1

    const/16 v2, 0x2bc

    invoke-static {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->-$$Nest$smsumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDiscreteAccessAt(I)Landroid/app/AppOpsManager$AttributedOpEntry;
    .registers 3

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$AttributedOpEntry;

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getDiscreteAccessCount()I
    .registers 2

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDiscreteAccesses(III)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    invoke-static {v0, p1, p2, p3}, Landroid/app/AppOpsManager;->-$$Nest$smlistForFlagsInStates(Ljava/util/List;III)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundAccessCount(I)J
    .registers 5

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    iget v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v1

    const/16 v2, 0x64

    invoke-static {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->-$$Nest$smsumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public getForegroundAccessDuration(I)J
    .registers 5

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    iget v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v1

    const/16 v2, 0x64

    invoke-static {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->-$$Nest$smsumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public getForegroundDiscreteAccesses(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    iget v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v1

    const/16 v2, 0x64

    invoke-static {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->-$$Nest$smlistForFlagsInStates(Ljava/util/List;III)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundRejectCount(I)J
    .registers 5

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    iget v1, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v1

    const/16 v2, 0x64

    invoke-static {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->-$$Nest$smsumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOpCode()I
    .registers 2

    iget v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    return v0
.end method

.method public getOpName()Ljava/lang/String;
    .registers 2

    iget v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRejectCount(III)J
    .registers 6

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p1, p2, p3}, Landroid/app/AppOpsManager;->-$$Nest$smsumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mOp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessCount:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p1}, Landroid/app/AppOpsManager;->-$$Nest$smwriteLongSparseLongArrayToParcel(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;)V

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mRejectCount:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p1}, Landroid/app/AppOpsManager;->-$$Nest$smwriteLongSparseLongArrayToParcel(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;)V

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mAccessDuration:Landroid/util/LongSparseLongArray;

    invoke-static {v0, p1}, Landroid/app/AppOpsManager;->-$$Nest$smwriteLongSparseLongArrayToParcel(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;)V

    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalOp;->mDiscreteAccesses:Ljava/util/List;

    invoke-static {v0, p1, p2}, Landroid/app/AppOpsManager;->-$$Nest$smwriteDiscreteAccessArrayToParcel(Ljava/util/List;Landroid/os/Parcel;I)V

    return-void
.end method
