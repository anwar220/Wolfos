# classes4.dex

.class final Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/RemoteInputConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KnownAlwaysTrueEndBatchEditCache"
.end annotation


# static fields
.field private static volatile sArray:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static volatile sElement:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static add(Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/view/inputmethod/InputConnection;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->sElement:Ljava/lang/Class;

    if-nez v0, :cond_7

    sput-object p0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->sElement:Ljava/lang/Class;

    return-void

    :cond_7
    sget-object v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->sArray:[Ljava/lang/Class;

    if-eqz v0, :cond_d

    array-length v1, v0

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v1, :cond_1c

    aget-object v4, v0, v3

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_1c
    aput-object p0, v2, v1

    sput-object v2, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->sArray:[Ljava/lang/Class;

    return-void
.end method

.method static contains(Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/view/inputmethod/InputConnection;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->sElement:Ljava/lang/Class;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_6

    return v1

    :cond_6
    sget-object v0, Lcom/android/internal/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->sArray:[Ljava/lang/Class;

    const/4 v2, 0x0

    if-nez v0, :cond_c

    return v2

    :cond_c
    array-length v3, v0

    move v4, v2

    :goto_e
    if-ge v4, v3, :cond_18

    aget-object v5, v0, v4

    if-ne v5, p0, :cond_15

    return v1

    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_18
    return v2
.end method
