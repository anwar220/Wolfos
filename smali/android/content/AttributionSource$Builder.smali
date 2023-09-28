# classes.dex

.class public final Landroid/content/AttributionSource$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/AttributionSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mAttributionSourceState:Landroid/content/AttributionSourceState;

.field private mBuilderFieldsSet:J


# direct methods
.method public constructor <init>(I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/AttributionSourceState;

    invoke-direct {v0}, Landroid/content/AttributionSourceState;-><init>()V

    iput-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    iput p1, v0, Landroid/content/AttributionSourceState;->uid:I

    return-void
.end method

.method public constructor <init>(Landroid/content/AttributionSource;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/AttributionSourceState;

    invoke-direct {v0}, Landroid/content/AttributionSourceState;-><init>()V

    iput-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    if-eqz p1, :cond_31

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    iput v1, v0, Landroid/content/AttributionSourceState;->uid:I

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    invoke-static {p1}, Landroid/content/AttributionSource;->-$$Nest$fgetmAttributionSourceState(Landroid/content/AttributionSource;)Landroid/content/AttributionSourceState;

    move-result-object v1

    iget-object v1, v1, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    return-void

    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "current AttributionSource can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkNotUsed()V
    .registers 5

    iget-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

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
.method public build()Landroid/content/AttributionSource;
    .registers 9

    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_18

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput-object v1, v0, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    :cond_18
    iget-wide v4, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x4

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_25

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput-object v1, v0, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    :cond_25
    iget-wide v4, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x8

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_32

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput-object v1, v0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    :cond_32
    iget-wide v4, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x10

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_3f

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput-object v1, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    :cond_3f
    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-static {}, Landroid/content/AttributionSource;->-$$Nest$sfgetsDefaultToken()Landroid/os/Binder;

    move-result-object v1

    iput-object v1, v0, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    if-nez v0, :cond_54

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/AttributionSourceState;

    iput-object v1, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    :cond_54
    new-instance v0, Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-direct {v0, v1}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    return-object v0
.end method

.method public setAttributionTag(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput-object p1, v0, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    return-object p0
.end method

.method public setNext(Landroid/content/AttributionSource;)Landroid/content/AttributionSource$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    if-eqz p1, :cond_19

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/AttributionSourceState;

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/content/AttributionSource;->-$$Nest$fgetmAttributionSourceState(Landroid/content/AttributionSource;)Landroid/content/AttributionSourceState;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_1b

    :cond_19
    iget-object v1, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    :goto_1b
    iput-object v1, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput-object p1, v0, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public setRenouncedPermissions(Ljava/util/Set;)Landroid/content/AttributionSource$Builder;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/AttributionSource$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/AttributionSource$Builder;->mBuilderFieldsSet:J

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    if-eqz p1, :cond_18

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    iput-object v1, v0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    return-object p0
.end method
