status = ['awake', 'tired'].sample

decision = if status == 'awake'
            'Be productive!'
          else
            'Go to sleep!'
          end

puts decision
