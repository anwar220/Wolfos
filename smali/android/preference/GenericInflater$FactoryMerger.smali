# classes3.dex

.class Landroid/preference/GenericInflater$FactoryMerger;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/GenericInflater$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/GenericInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FactoryMerger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/preference/GenericInflater$Factory<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mF1:Landroid/preference/GenericInflater$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/preference/GenericInflater$Factory<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mF2:Landroid/preference/GenericInflater$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/preference/GenericInflater$Factory<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/preference/GenericInflater$Factory;Landroid/preference/GenericInflater$Factory;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/GenericInflater$Factory<",
            "TT;>;",
            "Landroid/preference/GenericInflater$Factory<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/preference/GenericInflater$FactoryMerger;->mF1:Landroid/preference/GenericInflater$Factory;

    iput-object p2, p0, Landroid/preference/GenericInflater$FactoryMerger;->mF2:Landroid/preference/GenericInflater$Factory;

    return-void
.end method


# virtual methods
.method public onCreateItem(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/preference/GenericInflater$FactoryMerger;->mF1:Landroid/preference/GenericInflater$Factory;

    invoke-interface {v0, p1, p2, p3}, Landroid/preference/GenericInflater$Factory;->onCreateItem(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    iget-object v1, p0, Landroid/preference/GenericInflater$FactoryMerger;->mF2:Landroid/preference/GenericInflater$Factory;

    invoke-interface {v1, p1, p2, p3}, Landroid/preference/GenericInflater$Factory;->onCreateItem(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method