# classes.dex

.class public final Landroid/app/search/SearchTargetEvent$Builder;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/search/SearchTargetEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAction:I

.field private mFlags:I

.field private mLocation:Ljava/lang/String;

.field private mTargetIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/search/SearchTargetEvent$Builder;->mTargetIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput p2, p0, Landroid/app/search/SearchTargetEvent$Builder;->mAction:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/search/SearchTargetEvent$Builder;->mTargetIds:Ljava/util/List;

    iput p2, p0, Landroid/app/search/SearchTargetEvent$Builder;->mAction:I

    return-void
.end method


# virtual methods
.method public build()Landroid/app/search/SearchTargetEvent;
    .registers 8

    new-instance v6, Landroid/app/search/SearchTargetEvent;

    iget-object v1, p0, Landroid/app/search/SearchTargetEvent$Builder;->mTargetIds:Ljava/util/List;

    iget-object v2, p0, Landroid/app/search/SearchTargetEvent$Builder;->mLocation:Ljava/lang/String;

    iget v3, p0, Landroid/app/search/SearchTargetEvent$Builder;->mAction:I

    iget v4, p0, Landroid/app/search/SearchTargetEvent$Builder;->mFlags:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/app/search/SearchTargetEvent;-><init>(Ljava/util/List;Ljava/lang/String;IILandroid/app/search/SearchTargetEvent-IA;)V

    return-object v6
.end method

.method public setFlags(I)Landroid/app/search/SearchTargetEvent$Builder;
    .registers 2

    iput p1, p0, Landroid/app/search/SearchTargetEvent$Builder;->mFlags:I

    return-object p0
.end method

.method public setLaunchLocation(Ljava/lang/String;)Landroid/app/search/SearchTargetEvent$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/search/SearchTargetEvent$Builder;->mLocation:Ljava/lang/String;

    return-object p0
.end method
