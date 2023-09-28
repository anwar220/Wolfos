# classes3.dex

.class public final Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBuilderFieldsSet:J

.field private mPackageName:Ljava/lang/String;

.field private mStatusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$Builder;->mBuilderFieldsSet:J

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$Builder;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method private checkNotUsed()V
    .registers 5

    iget-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$Builder;->mBuilderFieldsSet:J

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
.method public build()Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;
    .registers 5

    invoke-direct {p0}, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    const/4 v0, 0x0

    iput v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$Builder;->mStatusCode:I

    :cond_16
    new-instance v0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;

    iget v1, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$Builder;->mStatusCode:I

    iget-object v2, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$Builder;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public setStatusCode(I)Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/service/ambientcontext/AmbientContextDetectionServiceStatus$Builder;->mStatusCode:I

    return-object p0
.end method
