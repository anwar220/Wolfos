# classes3.dex

.class public final synthetic Landroid/telephony/data/ApnSetting$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/data/ApnSetting$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Landroid/telephony/data/ApnSetting$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Landroid/telephony/data/ApnSetting;->lambda$getApnTypesFromBitmask$0(ILjava/lang/Integer;)Z

    move-result p1

    return p1
.end method
