# classes3.dex

.class public Landroid/service/autofill/BatchUpdates$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/BatchUpdates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDestroyed:Z

.field private mTransformations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/service/autofill/InternalTransformation;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUpdates:Landroid/widget/RemoteViews;


# direct methods
.method static bridge synthetic -$$Nest$fgetmTransformations(Landroid/service/autofill/BatchUpdates$Builder;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/BatchUpdates$Builder;->mTransformations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdates(Landroid/service/autofill/BatchUpdates$Builder;)Landroid/widget/RemoteViews;
    .registers 1

    iget-object p0, p0, Landroid/service/autofill/BatchUpdates$Builder;->mUpdates:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private throwIfDestroyed()V
    .registers 3

    iget-boolean v0, p0, Landroid/service/autofill/BatchUpdates$Builder;->mDestroyed:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called #build()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroid/service/autofill/BatchUpdates;
    .registers 4

    invoke-direct {p0}, Landroid/service/autofill/BatchUpdates$Builder;->throwIfDestroyed()V

    iget-object v0, p0, Landroid/service/autofill/BatchUpdates$Builder;->mUpdates:Landroid/widget/RemoteViews;

    const/4 v1, 0x1

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/service/autofill/BatchUpdates$Builder;->mTransformations:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    move v0, v1

    :goto_10
    const-string/jumbo v2, "must call either updateTemplate() or transformChild() at least once"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iput-boolean v1, p0, Landroid/service/autofill/BatchUpdates$Builder;->mDestroyed:Z

    new-instance v0, Landroid/service/autofill/BatchUpdates;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/BatchUpdates;-><init>(Landroid/service/autofill/BatchUpdates$Builder;Landroid/service/autofill/BatchUpdates-IA;)V

    return-object v0
.end method

.method public transformChild(ILandroid/service/autofill/Transformation;)Landroid/service/autofill/BatchUpdates$Builder;
    .registers 7

    invoke-direct {p0}, Landroid/service/autofill/BatchUpdates$Builder;->throwIfDestroyed()V

    instance-of v0, p2, Landroid/service/autofill/InternalTransformation;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string/jumbo v2, "not provided by Android System: %s"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/service/autofill/BatchUpdates$Builder;->mTransformations:Ljava/util/ArrayList;

    if-nez v0, :cond_1c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/BatchUpdates$Builder;->mTransformations:Ljava/util/ArrayList;

    :cond_1c
    iget-object v0, p0, Landroid/service/autofill/BatchUpdates$Builder;->mTransformations:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, p2

    check-cast v3, Landroid/service/autofill/InternalTransformation;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public updateTemplate(Landroid/widget/RemoteViews;)Landroid/service/autofill/BatchUpdates$Builder;
    .registers 3

    invoke-direct {p0}, Landroid/service/autofill/BatchUpdates$Builder;->throwIfDestroyed()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/service/autofill/BatchUpdates$Builder;->mUpdates:Landroid/widget/RemoteViews;

    return-object p0
.end method
