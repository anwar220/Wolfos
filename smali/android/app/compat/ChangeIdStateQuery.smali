# classes.dex

.class final Landroid/app/compat/ChangeIdStateQuery;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/compat/ChangeIdStateQuery$QueryType;
    }
.end annotation


# static fields
.field static final QUERY_BY_PACKAGE_NAME:I = 0x0

.field static final QUERY_BY_UID:I = 0x1


# instance fields
.field public changeId:J

.field public packageName:Ljava/lang/String;

.field public type:I

.field public uid:I

.field public userId:I


# direct methods
.method private constructor <init>(IJLjava/lang/String;II)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/compat/ChangeIdStateQuery;->type:I

    iput-wide p2, p0, Landroid/app/compat/ChangeIdStateQuery;->changeId:J

    iput-object p4, p0, Landroid/app/compat/ChangeIdStateQuery;->packageName:Ljava/lang/String;

    iput p5, p0, Landroid/app/compat/ChangeIdStateQuery;->uid:I

    iput p6, p0, Landroid/app/compat/ChangeIdStateQuery;->userId:I

    return-void
.end method

.method static byPackageName(JLjava/lang/String;I)Landroid/app/compat/ChangeIdStateQuery;
    .registers 12

    new-instance v7, Landroid/app/compat/ChangeIdStateQuery;

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-wide v2, p0

    move-object v4, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/compat/ChangeIdStateQuery;-><init>(IJLjava/lang/String;II)V

    return-object v7
.end method

.method static byUid(JI)Landroid/app/compat/ChangeIdStateQuery;
    .registers 11

    new-instance v7, Landroid/app/compat/ChangeIdStateQuery;

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-wide v2, p0

    move v5, p2

    invoke-direct/range {v0 .. v6}, Landroid/app/compat/ChangeIdStateQuery;-><init>(IJLjava/lang/String;II)V

    return-object v7
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_36

    instance-of v2, p1, Landroid/app/compat/ChangeIdStateQuery;

    if-nez v2, :cond_c

    goto :goto_36

    :cond_c
    move-object v2, p1

    check-cast v2, Landroid/app/compat/ChangeIdStateQuery;

    iget v3, p0, Landroid/app/compat/ChangeIdStateQuery;->type:I

    iget v4, v2, Landroid/app/compat/ChangeIdStateQuery;->type:I

    if-ne v3, v4, :cond_34

    iget-wide v3, p0, Landroid/app/compat/ChangeIdStateQuery;->changeId:J

    iget-wide v5, v2, Landroid/app/compat/ChangeIdStateQuery;->changeId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_34

    iget-object v3, p0, Landroid/app/compat/ChangeIdStateQuery;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/compat/ChangeIdStateQuery;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget v3, p0, Landroid/app/compat/ChangeIdStateQuery;->uid:I

    iget v4, v2, Landroid/app/compat/ChangeIdStateQuery;->uid:I

    if-ne v3, v4, :cond_34

    iget v3, p0, Landroid/app/compat/ChangeIdStateQuery;->userId:I

    iget v4, v2, Landroid/app/compat/ChangeIdStateQuery;->userId:I

    if-ne v3, v4, :cond_34

    goto :goto_35

    :cond_34
    move v0, v1

    :goto_35
    return v0

    :cond_36
    :goto_36
    return v1
.end method

.method public hashCode()I
    .registers 7

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/compat/ChangeIdStateQuery;->type:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroid/app/compat/ChangeIdStateQuery;->changeId:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    iget-object v1, p0, Landroid/app/compat/ChangeIdStateQuery;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_1d

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int v0, v2, v1

    :cond_1d
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/compat/ChangeIdStateQuery;->uid:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/app/compat/ChangeIdStateQuery;->userId:I

    add-int/2addr v0, v2

    return v0
.end method
