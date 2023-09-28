# classes3.dex

.class public final Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/ambientcontext/AmbientContextDetectionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBuilderFieldsSet:J

.field private mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ambientcontext/AmbientContextEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mBuilderFieldsSet:J

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method private checkNotUsed()V
    .registers 5

    iget-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    return-void

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addEvent(Landroid/app/ambientcontext/AmbientContextEvent;)Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->checkNotUsed()V

    iget-object v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mEvents:Ljava/util/ArrayList;

    if-nez v0, :cond_15

    iget-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mBuilderFieldsSet:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mEvents:Ljava/util/ArrayList;

    :cond_15
    iget-object v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addEvents(Ljava/util/List;)Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ambientcontext/AmbientContextEvent;",
            ">;)",
            "Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->checkNotUsed()V

    iget-object v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mEvents:Ljava/util/ArrayList;

    if-nez v0, :cond_15

    iget-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mBuilderFieldsSet:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mEvents:Ljava/util/ArrayList;

    :cond_15
    iget-object v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public build()Landroid/service/ambientcontext/AmbientContextDetectionResult;
    .registers 5

    invoke-direct {p0}, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mEvents:Ljava/util/ArrayList;

    :cond_1a
    new-instance v0, Landroid/service/ambientcontext/AmbientContextDetectionResult;

    iget-object v1, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mEvents:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/service/ambientcontext/AmbientContextDetectionResult;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public clearEvents()Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;
    .registers 2

    invoke-direct {p0}, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->checkNotUsed()V

    iget-object v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionResult$Builder;->mEvents:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_a
    return-object p0
.end method
