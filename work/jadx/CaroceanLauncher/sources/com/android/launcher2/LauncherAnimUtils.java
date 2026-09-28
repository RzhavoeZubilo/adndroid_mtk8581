package com.android.launcher2;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public class LauncherAnimUtils {
    static HashSet<Animator> sAnimators = new HashSet<>();
    static Animator.AnimatorListener sEndAnimListener = new Animator.AnimatorListener() { // from class: com.android.launcher2.LauncherAnimUtils.1
        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            LauncherAnimUtils.sAnimators.remove(animator);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            LauncherAnimUtils.sAnimators.remove(animator);
        }
    };

    public static void cancelOnDestroyActivity(Animator animator) {
        sAnimators.add(animator);
        animator.addListener(sEndAnimListener);
    }

    public static void onDestroyActivity() {
        for (Animator animator : new HashSet(sAnimators)) {
            if (animator.isRunning()) {
                animator.cancel();
            } else {
                sAnimators.remove(animator);
            }
        }
    }

    public static AnimatorSet createAnimatorSet() {
        AnimatorSet animatorSet = new AnimatorSet();
        cancelOnDestroyActivity(animatorSet);
        return animatorSet;
    }

    public static ValueAnimator ofFloat(float... fArr) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setFloatValues(fArr);
        cancelOnDestroyActivity(valueAnimator);
        return valueAnimator;
    }

    public static ObjectAnimator ofFloat(Object obj, String str, float... fArr) {
        ObjectAnimator objectAnimator = new ObjectAnimator();
        objectAnimator.setTarget(obj);
        objectAnimator.setPropertyName(str);
        objectAnimator.setFloatValues(fArr);
        cancelOnDestroyActivity(objectAnimator);
        return objectAnimator;
    }

    public static ObjectAnimator ofPropertyValuesHolder(Object obj, PropertyValuesHolder... propertyValuesHolderArr) {
        ObjectAnimator objectAnimator = new ObjectAnimator();
        objectAnimator.setTarget(obj);
        objectAnimator.setValues(propertyValuesHolderArr);
        cancelOnDestroyActivity(objectAnimator);
        return objectAnimator;
    }
}
