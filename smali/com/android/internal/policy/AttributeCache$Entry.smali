# classes4.dex

.class public final Lcom/android/internal/policy/AttributeCache$Entry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/AttributeCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field public final array:Landroid/content/res/TypedArray;

.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/policy/AttributeCache$Entry;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    return-void
.end method


# virtual methods
.method recycle()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_7
    return-void
.end method
