# classes4.dex

.class public Lcom/android/internal/util/AnnotationValidations;
.super Ljava/lang/Object;


# static fields
.field private static final SEARCH_DEPTH:I = 0xa


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static invalid(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, ""

    goto :goto_1f

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static invalid(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static validate(Ljava/lang/Class;Landroid/annotation/AppIdInt;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/AppIdInt;",
            ">;",
            "Landroid/annotation/AppIdInt;",
            "I)V"
        }
    .end annotation

    const v0, 0x186a0

    div-int v0, p2, v0

    if-nez v0, :cond_9

    if-gez p2, :cond_10

    :cond_9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_10
    return-void
.end method

.method public static validate(Ljava/lang/Class;Landroid/annotation/FloatRange;FLjava/lang/String;F)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/FloatRange;",
            ">;",
            "Landroid/annotation/FloatRange;",
            "F",
            "Ljava/lang/String;",
            "F)V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_42

    :cond_7
    goto :goto_1d

    :sswitch_8
    const-string v0, "from"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_1e

    :sswitch_12
    const-string/jumbo v0, "to"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_1e

    :goto_1d
    const/4 v0, -0x1

    :goto_1e
    packed-switch v0, :pswitch_data_4c

    goto :goto_41

    :pswitch_22  #0x1
    cmpl-float v0, p2, p4

    if-lez v0, :cond_41

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v0, p3, v1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_41

    :pswitch_32  #0x0
    cmpg-float v0, p2, p4

    if-gez v0, :cond_41

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v0, p3, v1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_41
    :goto_41
    return-void

    :sswitch_data_42
    .sparse-switch
        0xe7b -> :sswitch_12
        0x3017aa -> :sswitch_8
    .end sparse-switch

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_32  #00000000
        :pswitch_22  #00000001
    .end packed-switch
.end method

.method public static validate(Ljava/lang/Class;Landroid/annotation/FloatRange;FLjava/lang/String;FLjava/lang/String;F)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/FloatRange;",
            ">;",
            "Landroid/annotation/FloatRange;",
            "F",
            "Ljava/lang/String;",
            "F",
            "Ljava/lang/String;",
            "F)V"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/FloatRange;FLjava/lang/String;F)V

    invoke-static {p0, p1, p2, p5, p6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/FloatRange;FLjava/lang/String;F)V

    return-void
.end method

.method public static validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/IntRange;",
            ">;",
            "Landroid/annotation/IntRange;",
            "I",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    move-object v0, p0

    move/from16 v10, p2

    move-object/from16 v11, p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_ac

    :cond_c
    goto :goto_22

    :sswitch_d
    const-string v1, "from"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_23

    :sswitch_17
    const-string/jumbo v1, "to"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_23

    :goto_22
    const/4 v1, -0x1

    :goto_23
    packed-switch v1, :pswitch_data_b6

    goto/16 :goto_aa

    :pswitch_28  #0x1
    int-to-long v1, v10

    cmp-long v1, v1, p4

    if-lez v1, :cond_aa

    sget-boolean v1, Landroid/os/Build;->IS_MIUI:Z

    if-eqz v1, :cond_8e

    const-wide/16 v1, 0x78

    cmp-long v1, p4, v1

    if-nez v1, :cond_8e

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v12

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_42
    array-length v3, v12

    if-ge v2, v3, :cond_6d

    aget-object v3, v12, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppOpsManager"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6a

    aget-object v3, v12, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppOpsService"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_62

    goto :goto_6a

    :cond_62
    const/16 v3, 0xa

    if-le v2, v3, :cond_67

    goto :goto_6d

    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    :cond_6a
    :goto_6a
    const/4 v1, 0x1

    move v13, v1

    goto :goto_6e

    :cond_6d
    :goto_6d
    move v13, v1

    :goto_6e
    if-eqz v13, :cond_82

    const-class v1, Landroid/annotation/IntRange;

    const/4 v2, 0x0

    const-wide/16 v5, 0x2711

    const-wide/16 v8, 0x273f

    const-string v4, "from"

    const-string/jumbo v7, "to"

    move/from16 v3, p2

    invoke-static/range {v1 .. v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    goto :goto_8d

    :cond_82
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v1, v11, v2}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_8d
    goto :goto_aa

    :cond_8e
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v1, v11, v2}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_aa

    :pswitch_9a  #0x0
    int-to-long v1, v10

    cmp-long v1, v1, p4

    if-gez v1, :cond_aa

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v1, v11, v2}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_aa
    :goto_aa
    return-void

    nop

    :sswitch_data_ac
    .sparse-switch
        0xe7b -> :sswitch_17
        0x3017aa -> :sswitch_d
    .end sparse-switch

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_9a  #00000000
        :pswitch_28  #00000001
    .end packed-switch
.end method

.method public static validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/IntRange;",
            ">;",
            "Landroid/annotation/IntRange;",
            "I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    invoke-static/range {p0 .. p5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p6

    move-wide v4, p7

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    return-void
.end method

.method public static validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/IntRange;",
            ">;",
            "Landroid/annotation/IntRange;",
            "J",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_42

    :cond_7
    goto :goto_1d

    :sswitch_8
    const-string v0, "from"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_1e

    :sswitch_12
    const-string/jumbo v0, "to"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_1e

    :goto_1d
    const/4 v0, -0x1

    :goto_1e
    packed-switch v0, :pswitch_data_4c

    goto :goto_41

    :pswitch_22  #0x1
    cmp-long v0, p2, p5

    if-lez v0, :cond_41

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, p4, v1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_41

    :pswitch_32  #0x0
    cmp-long v0, p2, p5

    if-gez v0, :cond_41

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, p4, v1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_41
    :goto_41
    return-void

    :sswitch_data_42
    .sparse-switch
        0xe7b -> :sswitch_12
        0x3017aa -> :sswitch_8
    .end sparse-switch

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_32  #00000000
        :pswitch_22  #00000001
    .end packed-switch
.end method

.method public static validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;JLjava/lang/String;J)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/IntRange;",
            ">;",
            "Landroid/annotation/IntRange;",
            "J",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    invoke-static/range {p0 .. p6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p7

    move-wide v5, p8

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    return-void
.end method

.method public static validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/NonNull;",
            ">;",
            "Landroid/annotation/NonNull;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static validate(Ljava/lang/Class;Landroid/annotation/Size;ILjava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/Size;",
            ">;",
            "Landroid/annotation/Size;",
            "I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_76

    :cond_8
    goto :goto_35

    :sswitch_9
    const-string/jumbo v0, "multiple"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_36

    :sswitch_14
    const-string/jumbo v0, "value"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_36

    :sswitch_1f
    const-string/jumbo v0, "min"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_36

    :sswitch_2a
    const-string/jumbo v0, "max"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_36

    :goto_35
    move v0, v1

    :goto_36
    packed-switch v0, :pswitch_data_88

    goto :goto_75

    :pswitch_3a  #0x3
    rem-int v0, p2, p4

    if-eqz v0, :cond_75

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, p3, v1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_75

    :pswitch_4a  #0x2
    if-le p2, p4, :cond_75

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, p3, v1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_75

    :pswitch_58  #0x1
    if-ge p2, p4, :cond_75

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, p3, v1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_75

    :pswitch_66  #0x0
    if-eq p4, v1, :cond_75

    if-eq p2, p4, :cond_75

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, p3, v1}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_75
    :goto_75
    return-void

    :sswitch_data_76
    .sparse-switch
        0x1a564 -> :sswitch_2a
        0x1a652 -> :sswitch_1f
        0x6ac9171 -> :sswitch_14
        0x26f8a610 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_66  #00000000
        :pswitch_58  #00000001
        :pswitch_4a  #00000002
        :pswitch_3a  #00000003
    .end packed-switch
.end method

.method public static validate(Ljava/lang/Class;Landroid/annotation/Size;ILjava/lang/String;ILjava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/Size;",
            ">;",
            "Landroid/annotation/Size;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/Size;ILjava/lang/String;I)V

    invoke-static {p0, p1, p2, p5, p6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/Size;ILjava/lang/String;I)V

    return-void
.end method

.method public static validate(Ljava/lang/Class;Landroid/annotation/UserIdInt;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/annotation/UserIdInt;",
            ">;",
            "Landroid/annotation/UserIdInt;",
            "I)V"
        }
    .end annotation

    const/16 v0, -0x2710

    if-eq p2, v0, :cond_7

    const/4 v0, -0x3

    if-lt p2, v0, :cond_b

    :cond_7
    const/16 v0, 0x53e2

    if-le p2, v0, :cond_12

    :cond_b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_12
    return-void
.end method

.method public static validate(Ljava/lang/Class;Landroid/content/Intent$Flags;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/content/Intent$Flags;",
            ">;",
            "Landroid/content/Intent$Flags;",
            "I)V"
        }
    .end annotation

    const/high16 v0, -0x80000000

    invoke-static {v0}, Lcom/android/internal/util/BitUtils;->flagsUpTo(I)I

    move-result v0

    invoke-static {p0, p2, v0}, Lcom/android/internal/util/AnnotationValidations;->validateIntFlags(Ljava/lang/Class;II)V

    return-void
.end method

.method public static validate(Ljava/lang/Class;Landroid/content/pm/PackageManager$PackageInfoFlagsBits;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/content/pm/PackageManager$PackageInfoFlagsBits;",
            ">;",
            "Landroid/content/pm/PackageManager$PackageInfoFlagsBits;",
            "J)V"
        }
    .end annotation

    nop

    const/high16 v0, 0x20000000

    invoke-static {v0}, Lcom/android/internal/util/BitUtils;->flagsUpTo(I)I

    move-result v0

    invoke-static {p0, p2, p3, v0}, Lcom/android/internal/util/AnnotationValidations;->validateLongFlags(Ljava/lang/Class;JI)V

    return-void
.end method

.method public static validate(Ljava/lang/Class;Landroid/content/pm/PackageManager$PermissionResult;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Landroid/content/pm/PackageManager$PermissionResult;",
            ">;",
            "Landroid/content/pm/PackageManager$PermissionResult;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Lcom/android/internal/util/AnnotationValidations;->validateIntEnum(Ljava/lang/Class;II)V

    return-void
.end method

.method public static validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.annotation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Res"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    :cond_18
    const-class v0, Landroid/annotation/ColorInt;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_20
    if-gez p2, :cond_29

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_29
    return-void
.end method

.method public static varargs validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            "I[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            "J)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.annotation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Long"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_25

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_25
    return-void
.end method

.method public static validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static varargs validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private static validateIntEnum(Ljava/lang/Class;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;II)V"
        }
    .end annotation

    if-le p1, p2, :cond_9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method private static validateIntFlags(Ljava/lang/Class;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;II)V"
        }
    .end annotation

    and-int v0, p2, p1

    if-eq v0, p2, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_1e
    return-void
.end method

.method private static validateLongFlags(Ljava/lang/Class;JI)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;JI)V"
        }
    .end annotation

    int-to-long v0, p3

    and-long/2addr v0, p1

    int-to-long v2, p3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/util/AnnotationValidations;->invalid(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_21
    return-void
.end method
