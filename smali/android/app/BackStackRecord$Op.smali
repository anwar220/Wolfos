# classes.dex

.class final Landroid/app/BackStackRecord$Op;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/BackStackRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Op"
.end annotation


# instance fields
.field cmd:I

.field enterAnim:I

.field exitAnim:I

.field fragment:Landroid/app/Fragment;

.field popEnterAnim:I

.field popExitAnim:I


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(ILandroid/app/Fragment;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/BackStackRecord$Op;->cmd:I

    iput-object p2, p0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    return-void
.end method