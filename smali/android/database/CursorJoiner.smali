# classes.dex

.class public final Landroid/database/CursorJoiner;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/CursorJoiner$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/database/CursorJoiner$Result;",
        ">;",
        "Ljava/lang/Iterable<",
        "Landroid/database/CursorJoiner$Result;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mColumnsLeft:[I

.field private mColumnsRight:[I

.field private mCompareResult:Landroid/database/CursorJoiner$Result;

.field private mCompareResultIsValid:Z

.field private mCursorLeft:Landroid/database/Cursor;

.field private mCursorRight:Landroid/database/Cursor;

.field private mValues:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    array-length v1, p4

    if-ne v0, v1, :cond_2c

    iput-object p1, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    iput-object p3, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    invoke-direct {p0, p1, p2}, Landroid/database/CursorJoiner;->buildColumnIndiciesArray(Landroid/database/Cursor;[Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorJoiner;->mColumnsLeft:[I

    invoke-direct {p0, p3, p4}, Landroid/database/CursorJoiner;->buildColumnIndiciesArray(Landroid/database/Cursor;[Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/database/CursorJoiner;->mColumnsRight:[I

    iget-object v0, p0, Landroid/database/CursorJoiner;->mColumnsLeft:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/database/CursorJoiner;->mValues:[Ljava/lang/String;

    return-void

    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "you must have the same number of columns on the left and right, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private buildColumnIndiciesArray(Landroid/database/Cursor;[Ljava/lang/String;)[I
    .registers 6

    array-length v0, p2

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_4
    array-length v2, p2

    if-ge v1, v2, :cond_12

    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    return-object v0
.end method

.method private static varargs compareStrings([Ljava/lang/String;)I
    .registers 6

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_34

    const/4 v0, 0x0

    :goto_6
    array-length v1, p0

    if-ge v0, v1, :cond_32

    aget-object v1, p0, v0

    const/4 v2, -0x1

    if-nez v1, :cond_16

    add-int/lit8 v1, v0, 0x1

    aget-object v1, p0, v1

    if-nez v1, :cond_15

    goto :goto_2f

    :cond_15
    return v2

    :cond_16
    add-int/lit8 v1, v0, 0x1

    aget-object v1, p0, v1

    const/4 v3, 0x1

    if-nez v1, :cond_1e

    return v3

    :cond_1e
    aget-object v1, p0, v0

    add-int/lit8 v4, v0, 0x1

    aget-object v4, p0, v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2f

    if-gez v1, :cond_2d

    goto :goto_2e

    :cond_2d
    move v2, v3

    :goto_2e
    return v2

    :cond_2f
    :goto_2f
    add-int/lit8 v0, v0, 0x2

    goto :goto_6

    :cond_32
    const/4 v0, 0x0

    return v0

    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "you must specify an even number of values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private incrementCursors()V
    .registers 3

    iget-boolean v0, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    if-eqz v0, :cond_2b

    sget-object v0, Landroid/database/CursorJoiner$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    iget-object v1, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    invoke-virtual {v1}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2c

    goto :goto_28

    :pswitch_12  #0x3
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_28

    :pswitch_18  #0x2
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_28

    :pswitch_1e  #0x1
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    :goto_28
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    :cond_2b
    return-void

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_1e  #00000001
        :pswitch_18  #00000002
        :pswitch_12  #00000003
    .end packed-switch
.end method

.method private static populateValues([Ljava/lang/String;Landroid/database/Cursor;[II)V
    .registers 7

    nop

    const/4 v0, 0x0

    :goto_2
    array-length v1, p2

    if-ge v0, v1, :cond_13

    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p3

    aget v2, p2, v0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_13
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 5

    iget-boolean v0, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_64

    sget-object v0, Landroid/database/CursorJoiner$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    iget-object v3, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    invoke-virtual {v3}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_76

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad value for mCompareResult, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2e  #0x3
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_3f

    :cond_3e
    move v1, v2

    :cond_3f
    return v1

    :pswitch_40  #0x2
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_51

    :cond_50
    move v1, v2

    :cond_51
    return v1

    :pswitch_52  #0x1
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_63

    :cond_62
    move v1, v2

    :cond_63
    return v1

    :cond_64
    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_75

    :cond_74
    move v1, v2

    :cond_75
    return v1

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_52  #00000001
        :pswitch_40  #00000002
        :pswitch_2e  #00000003
    .end packed-switch
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/database/CursorJoiner$Result;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public next()Landroid/database/CursorJoiner$Result;
    .registers 8

    invoke-virtual {p0}, Landroid/database/CursorJoiner;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-direct {p0}, Landroid/database/CursorJoiner;->incrementCursors()V

    nop

    iget-object v0, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v0, :cond_4a

    if-eqz v2, :cond_4a

    iget-object v3, p0, Landroid/database/CursorJoiner;->mValues:[Ljava/lang/String;

    iget-object v4, p0, Landroid/database/CursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    iget-object v5, p0, Landroid/database/CursorJoiner;->mColumnsLeft:[I

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/database/CursorJoiner;->populateValues([Ljava/lang/String;Landroid/database/Cursor;[II)V

    iget-object v3, p0, Landroid/database/CursorJoiner;->mValues:[Ljava/lang/String;

    iget-object v4, p0, Landroid/database/CursorJoiner;->mCursorRight:Landroid/database/Cursor;

    iget-object v5, p0, Landroid/database/CursorJoiner;->mColumnsRight:[I

    invoke-static {v3, v4, v5, v1}, Landroid/database/CursorJoiner;->populateValues([Ljava/lang/String;Landroid/database/Cursor;[II)V

    iget-object v3, p0, Landroid/database/CursorJoiner;->mValues:[Ljava/lang/String;

    invoke-static {v3}, Landroid/database/CursorJoiner;->compareStrings([Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_64

    goto :goto_49

    :pswitch_3a  #0x1
    sget-object v3, Landroid/database/CursorJoiner$Result;->RIGHT:Landroid/database/CursorJoiner$Result;

    iput-object v3, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    goto :goto_49

    :pswitch_3f  #0x0
    sget-object v3, Landroid/database/CursorJoiner$Result;->BOTH:Landroid/database/CursorJoiner$Result;

    iput-object v3, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    goto :goto_49

    :pswitch_44  #0xffffffff
    sget-object v3, Landroid/database/CursorJoiner$Result;->LEFT:Landroid/database/CursorJoiner$Result;

    iput-object v3, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    nop

    :goto_49
    goto :goto_56

    :cond_4a
    if-eqz v0, :cond_51

    sget-object v3, Landroid/database/CursorJoiner$Result;->LEFT:Landroid/database/CursorJoiner$Result;

    iput-object v3, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    goto :goto_56

    :cond_51
    nop

    sget-object v3, Landroid/database/CursorJoiner$Result;->RIGHT:Landroid/database/CursorJoiner$Result;

    iput-object v3, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    :goto_56
    iput-boolean v1, p0, Landroid/database/CursorJoiner;->mCompareResultIsValid:Z

    iget-object v1, p0, Landroid/database/CursorJoiner;->mCompareResult:Landroid/database/CursorJoiner$Result;

    return-object v1

    :cond_5b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "you must only call next() when hasNext() is true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_64
    .packed-switch -0x1
        :pswitch_44  #ffffffff
        :pswitch_3f  #00000000
        :pswitch_3a  #00000001
    .end packed-switch
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Landroid/database/CursorJoiner;->next()Landroid/database/CursorJoiner$Result;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method